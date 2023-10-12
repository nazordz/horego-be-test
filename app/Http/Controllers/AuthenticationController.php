<?php

namespace App\Http\Controllers;

use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;
use Illuminate\Validation\ValidationException;

class AuthenticationController extends Controller
{
    public function login(Request $request) {
        $request->validate([
            'email' => 'required|email',
            'password' => 'required',
        ]);

        $user = User::where('email', $request->email)->with('user_organization')->first();

        if (! $user || ! Hash::check($request->password, $user->password)) {
            throw ValidationException::withMessages([
                'email' => ['The provided credentials are incorrect.'],
            ]);
        }
        $abilities = [$user->role];
        if ($user?->user_organization?->is_manager) {
            $abilities[] = 'manager';
        }

        $token = $user->createToken('ApiToken', $abilities)->plainTextToken;

        $response = [
            'status'   => true,
            'user'      => $user,
            'token'     => $token
        ];

    return response($response, 201);
    }

    public function logout(Request $request)
    {
        $request->user()->currentAccessToken()->delete();
        return response()->json([
            'status'    => true
        ], 200);
    }
}
