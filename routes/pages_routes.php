<?php

date_default_timezone_set("Africa/Cairo");


// Web Routing
Route::group(['middleware' => ['web']], function () {

    Route::get("/pages/{page_slug}",'front\pages@show_item');
    Route::get("/pages/".'{lang_title?}/{page_slug}','front\pages@show_item');

});










