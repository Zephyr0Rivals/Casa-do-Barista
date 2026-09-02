<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\Newsletter;

// dashboard related |^
class NewsletterController extends Controller{
    
    public function index (){
       
        $listaNewsletter = Newsletter::OrderByDesc('id_news')->get();

        return view('admin.Newsletter.index', compact('listaNewsletter'));
    
    }
} 