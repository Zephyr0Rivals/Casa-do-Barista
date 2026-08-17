<?php

namespace App\Http\Controllers\Dash;

use App\Http\Controllers\Controller;

class DashController extends Controller{
    
    public function dash (){


        return view('dash.dashboard.dashboard');
    
    }
}