<?php

namespace App\Http\Controllers;

use App\Models\Organization;
use App\Models\User;
use Illuminate\Database\Query\Builder;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Validator;
use Illuminate\Validation\Rule;

class OrganizationController extends Controller
{
    public function pagination(Request $request) {

        $organizations = new Organization;

        if ($request->filled('search')) {
            $organizations = $organizations->where('name', 'like', "%{$request->search}%");
            $organizations = $organizations->orWhereIn('id', function(Builder $q) use ($request) {
                $q->from('persons')
                    ->select('organization_id')
                    ->where('persons.name', 'like', "%{$request->search}%");
            });
        }

        if ($request->user()->tokenCan('customer')) {
            $user = User::with('user_organization')->find($request->user()->id);
            $organizations = $organizations->where('id', $user->user_organization->organization_id);
        }

        $organizations = $organizations->paginate($request->input('per_page', 10));

        return $organizations;
    }

    public function create(Request $request) {
        $request->validate([
            'name' => 'required',
            'phone' => 'required|unique:organizations,phone',
            'email' => 'required|email|unique:organizations,email',
            'website' => 'required',
            'logo' => 'required|image',
        ]);

        DB::beginTransaction();
        try {
            $org = new Organization();
            $org->name = $request->name;
            $org->phone = $request->phone;
            $org->email = $request->email;
            $org->website = $request->website;

            $fileName = time().'-'.$request->logo->getClientOriginalName();
            $request->logo->storeAs('public/logos', $fileName);

            $org->logo = env('APP_URL').'/storage/logos/'.$fileName;
            $org->save();
            DB::commit();

            return response()->json($org);
        } catch (\Throwable $th) {
            DB::rollBack();
            return response()->json([
                'message' => 'Internal server error',
                'traces' => $th->getTrace()
            ], 500);
        }


    }

    public function update(Request $request, String $id) {
        $org = Organization::find($id);

        if ($org == null) {
            return response()->json([
                'message' => 'organization not found',
            ], 404);
        }

        $validator = Validator::make($request->all(), [
            'name' => 'required',
            'website' => 'required',
            'logo' => 'nullable|image',
            'email' => [
                'required',
                Rule::unique('organizations')->ignore($org->email, 'email')
            ],
            'phone' => [
                'required',
                Rule::unique('organizations')->ignore($org->phone, 'phone')
            ],
        ]);
        if ($validator->fails()) {
            return response()->json($validator->errors());
        }

        DB::beginTransaction();
        try {
            $org->name = $request->name;
            $org->phone = $request->phone;
            $org->email = $request->email;
            $org->website = $request->website;

            if ($request->logo != null) {
                $fileName = time().'-'.$request->logo->getClientOriginalName();
                $request->logo->storeAs('public/logos', $fileName);
                $org->logo = env('APP_URL').'/storage/logos/'.$fileName;
            }
            DB::commit();
            $org->save();

            return response()->json($org);
        } catch (\Throwable $th) {
            DB::rollBack();
            return response()->json([
                'message' => 'Internal server error',
                'traces' => $th->getTrace()
            ], 500);
        }


    }

    public function delete(String $id) {
        DB::beginTransaction();
        try {
            Organization::destroy($id);
            DB::commit();
            return response()->json([
                'message' => 'Data has been deleted'
            ]);
        } catch (\Throwable $th) {
            DB::rollBack();
            return response()->json([
                'message' => 'Internal server error',
                'traces' => $th->getTrace()
            ], 500);
        }
    }

    public function findById(string $id) {
        return response()->json(Organization::find($id));
    }
}
