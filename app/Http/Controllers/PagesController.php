<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Page;
use App\Service;

class PagesController extends Controller
{
    //Pages
    public function index($slug){

        $page = Page::where('slug', $slug)->first();
        $services = Service::all();

        return view ('page', compact('page', 'services'));
    }
}
