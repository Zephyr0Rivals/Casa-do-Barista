<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\Banner;


// dashboard related |^
class BannerController extends Controller{
    
    public function index (){
       
        $listaBanner = Banner::OrderByDesc('id_banner')->get();

        return view('admin.Banner.index', compact('listaBanner'));
    
    }
} 