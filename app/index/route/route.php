<?php

use think\facade\Route;
Route::get('product','index/product');
Route::get('apply','index/apply');
Route::get('support','index/support');
Route::get('about','index/about');
Route::get('contact','index/contact');


Route::get('pinfo/:id','index/pinfo');
Route::get('ainfo/:id','index/ainfo');
Route::get('sinfo/:id','index/sinfo');





