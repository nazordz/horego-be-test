<?php

namespace App\Http\Controllers;

use App\Models\Person;
use Illuminate\Http\JsonResponse;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Validator;
use Illuminate\Validation\Rule;

class PersonController extends Controller
{
    public function pagination(Request $request, String $organization_id) {
        if ($organization_id == null) {
            return response()->json([
                'message' => 'Missing organization_id'
            ], 400);
        }
        return Person::where('organization_id', $organization_id)->paginate($request->input('per_page', 10));
    }

    public function findById(String $id) : JsonResponse {
        return response()->json(Person::find($id));
    }

    public function create(Request $request) {
        DB::beginTransaction();
        try {
            $validator = Validator::make($request->all(), [
                'organization_id' => 'required',
                'name' => 'required',
                'phone' => 'required|unique:persons,phone',
                'email' => 'required|unique:persons,email',
                'avatar' => 'required|image',
            ]);
            if ($validator->fails()) {
                return response()->json($validator->errors());
            }
            $person = new Person();
            $person->name = $request->name;
            $person->phone = $request->phone;
            $person->email = $request->email;
            $person->organization_id = $request->organization_id;

            $fileName = time().'-'.$request->avatar->getClientOriginalName();
            $request->avatar->storeAs('public/avatars', $fileName);

            $person->avatar = env('APP_URL').'/storage/avatars/'.$fileName;

            $person->save();
            DB::commit();
            return response()->json($person);
        } catch (\Throwable $th) {
            DB::rollBack();
            return response()->json([
                'message' => 'Internal server error',
                'traces' => $th->getTrace()
            ], 500);
        }
    }

    public function update(Request $request, String $id) {
        $person = Person::find($id);
        if ($person == null) {
            return response()->json([
                'message' => 'person not found',
            ], 404);
        }

        $validator = Validator::make($request->all(), [
            'organization_id' => 'required|exists:organizations,id',
            'name' => 'required',
            'email' => [
                'required',
                Rule::unique('persons')->ignore($person->email, 'email')
            ],
            'phone' => [
                'required',
                Rule::unique('persons')->ignore($person->phone, 'phone')
            ],
            'avatar' => 'nullable|image',
        ]);
        if ($validator->fails()) {
            return response()->json($validator->errors());
        }

        DB::beginTransaction();
        try {

            $person->name = $request->name;
            $person->phone = $request->phone;
            $person->email = $request->email;

            if ($request->avatar != null) {
                $fileName = time().'-'.$request->avatar->getClientOriginalName();
                $request->avatar->storeAs('public/avatars', $fileName);
                $person->avatar = env("APP_URL").'/storage/avatars/'.$fileName;
            }

            $person->save();
            DB::commit();
            return response()->json($person);
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
            Person::destroy($id);
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
}
