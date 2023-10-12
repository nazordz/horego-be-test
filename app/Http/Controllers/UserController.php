<?php

namespace App\Http\Controllers;

use App\Models\User;
use App\Models\UserOrganization;
use Illuminate\Http\JsonResponse;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Validator;
use Illuminate\Validation\Rule;

class UserController extends Controller
{
    public function pagination(Request $request): JsonResponse {
        $q = User::where('role', 'customer')
            ->with('user_organization.organization')
            ->paginate($request->input('per_page', 10));
        return response()->json($q);
    }

    public function findById(String $id) : JsonResponse {
        $q = User::with('user_organization.organization')->find($id);
        return response()->json($q);
    }

    public function create(Request $request) {
        $request->validate([
            'name' => 'required',
            'phone' => 'required|unique:users,phone',
            'email' => 'required|email|unique:users,email',
            'password' => 'nullable',
            'organizationId' => 'required',
            'isManager' => 'required|boolean',
        ]);
        DB::beginTransaction();
        try {
            $user = new User();
            $user->name = $request->name;
            $user->phone = $request->phone;
            $user->email = $request->email;

            $user->password = Hash::make($request->password);

            $user->role = 'customer';
            $user->save();
            DB::commit();

            $userOrg = new UserOrganization();
            $userOrg->organization_id = $request->organizationId;
            $userOrg->is_manager = $request->isManager;
            $user->user_organization()->save($userOrg);
            DB::commit();

            if ($request->isManager) {
                UserOrganization::where('organization_id', $request->organizationId)
                ->where('user_id', '!=', $user->id)
                ->update([
                    'is_manager' => false
                ]);
                DB::commit();
            }
            return response()->json($user);
        } catch (\Throwable $th) {
            DB::rollBack();
            return response()->json([
                'message' => 'Internal server error',
                'traces' => $th->getTrace()
            ], 500);
        }
    }


    public function update(Request $request, String $id) {
        $user = User::find($id);
        if ($user == null) {
            return response()->json([
                'message' => 'user not found',
            ], 404);
        }
        $validator = Validator::make($request->all(), [
            'name' => 'required',
            'phone' => [
                'required',
                Rule::unique('users')->ignore($user->phone, 'phone')

            ],
            'email' => [
                'required',
                'email',
                Rule::unique('users')->ignore($user->email, 'email')
            ],
            'password' => 'nullable',
            'organizationId' => 'required',
            'isManager' => 'required|boolean',
        ]);

        if ($validator->fails()) {
            return response()->json($validator->errors());
        }

        DB::beginTransaction();
        try {
            $user->name = $request->name;
            $user->phone = $request->phone;
            $user->email = $request->email;
            if ($request->filled('password')) {
                $user->password = Hash::make($request->password);
            }
            $user->save();
            DB::commit();

            $user->user_organization()->updateOrCreate(['user_id' => $user->id], [
                'organization_id' => $request->organizationId,
                'is_manager' => $request->isManager
            ]);
            DB::commit();

            if ($request->isManager) {
                UserOrganization::where('organization_id', $request->organizationId)
                ->where('user_id', '!=', $user->id)
                ->update([
                    'is_manager' => false
                ]);
                DB::commit();
            }
            return response()->json($user);
        } catch (\Throwable $th) {
            DB::rollBack();
            return response()->json([
                'message' => $th->getMessage(),
                'traces' => $th->getTrace()
            ], 500);
        }
    }

    public function delete(String $id) {
        DB::beginTransaction();
        try {
            User::destroy($id);
            DB::commit();
            return response()->json([
                'message' => 'data has been deleted',
            ]);
        } catch (\Throwable $th) {
            DB::rollBack();
            return response()->json([
                'message' => 'Internal server error',
                'traces' => $th->getTrace()
            ], 500);
        }
    }
}
