<?php

namespace App\Http\Controllers\API;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\User;
use App\Admin;
use Hash;
use Validator;
use Auth;
use DB;
use DataTables;

class AuthController extends Controller
{
    //
    protected $status = null;
    protected $error = null;
    protected $data = null;
    public function superadminDashboard()
    {
        $users = User::all();
        $success =  $users;

        return response()->json($success, 200);
    }

    public function adminDashboard()
    {
        try {
            $admin = DB::table('admins')
                ->select(
                    'name',
                    'email',
                    'c_password'
                )
                ->get();
            $this->data = $admin;
            $this->status = "success";
        } catch (QueryException $e) {
            $this->status = "failed";
            $this->error = $e;
        }
        return response()->json([
            "status" => DataTables::of($this->data)->make(true),
            "data" => $this->data,
            "error" => $this->error
        ]);
    }
    public function details()
    {
        $user = Auth::user();
        return response()->json([$user]);
    }
    public function superadminLogin(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'email' => 'required|email',
            'password' => 'required',
        ]);

        if ($validator->fails()) {
            return response()->json(['error' => $validator->errors()->all()]);
        }

        if (auth()->guard('user')->attempt(['email' => request('email'), 'password' => request('password')])) {

            config(['auth.guards.api.provider' => 'user']);

            $user = User::select('users.*')->find(auth()->guard('user')->user()->id);
            $success =  $user;
            $success['token'] =  $user->createToken('MyApp', ['user'])->accessToken;

            // return response()->json([
            //     "status" => "BERHASIL LOGIN SUPERADMIN",
            //     "data" => $success,
            // ]);
            return response()->json([$success]);
        } else if (auth()->guard('admin')->attempt(['email' => request('email'), 'password' => request('password')])) {

            config(['auth.guards.api.provider' => 'admin']);

            $admin = Admin::select('admins.*')->find(auth()->guard('admin')->user()->id);
            $success =  $admin;
            $success['token'] =  $admin->createToken('MyApp', ['admin'])->accessToken;
            return response()->json([$success]);
        } else {
            return response()->json(['error' => ['Email and Password are Wrong.']], 200);
        }
    }
    public function registersuperAdmin(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'email' => 'required|email',
            'password' => 'required',

        ]);

        if ($validator->fails()) {
            return response()->json(['error' => $validator->errors()], 401);
        }

        $input = $request->all();
        $input['password'] = bcrypt($input['password']);
        $user = User::create($input);
        $success['token'] =  $user->createToken('nApp')->accessToken;
        $success['name'] =  $user;

        return response()->json(['success' => $success]);
    }
    public function registerAdmin(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'email' => 'required|email|unique',
            'name' => 'required|unique',
            'password' => 'required',
            'c_password' => 'required',
        ]);

        if ($validator->fails()) {
            return response()->json(['error' => $validator->errors()], 401);
        }

        $input = $request->all();
        $input['password'] = bcrypt($input['password']);
        $user = Admin::create($input);
        $success['token'] =  $user->createToken('nApp')->accessToken;
        $success['name'] =  $user;

        return response()->json(['success' => $success]);
    }

    // public function adminLogin(Request $request)
    // {
    //     $validator = Validator::make($request->all(), [
    //         'email' => 'required|email',
    //         'password' => 'required',
    //     ]);

    //     if ($validator->fails()) {
    //         return response()->json(['error' => $validator->errors()->all()]);
    //     }

    //     if (auth()->guard('admin')->attempt(['email' => request('email'), 'password' => request('password')])) {

    //         config(['auth.guards.api.provider' => 'admin']);

    //         $admin = Admin::select('admins.*')->find(auth()->guard('admin')->user()->id);
    //         $success =  $admin;
    //         $success['token'] =  $admin->createToken('MyApp', ['admin'])->accessToken;

    //         return response()->json($success, 200);
    //     } else {
    //         return response()->json(['error' => ['Email and Password are Wrong.']], 200);
    //     }
    // }
}
