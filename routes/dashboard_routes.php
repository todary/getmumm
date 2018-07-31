<?php

/*
|--------------------------------------------------------------------------
| Application Routes
|--------------------------------------------------------------------------
|
| Here is where you can register all of the routes for an application.
| It's a breeze. Simply tell Laravel the URIs it should respond to
| and give it the controller to call when that URI is requested.
|
*/

date_default_timezone_set("Africa/Cairo");




Route::group(['middleware' => 'web'], function () {


    Route::get('admin/edit_content/{lang_id}/{slug}','admin\edit_content@check_function');
    Route::post('admin/edit_content/{lang_id}/{slug}','admin\edit_content@check_function');

    Route::get('/send_emails','HomeController@send_emails');


    // Start General Function Routing

    Route::post('/general_remove_item','dashbaord_controller@general_remove_item');

    Route::post('/reorder_items','dashbaord_controller@reorder_items');
    Route::post('/accept_item','dashbaord_controller@accept_item');
    Route::post('/new_accept_item','dashbaord_controller@new_accept_item');
    Route::post('/remove_admin','dashbaord_controller@remove_admin');
    Route::post('/general_self_edit','dashbaord_controller@general_self_edit');


    // End General Function Routing


    // Start Admin Edit Content Show Methods

    Route::get('/admin/show_methods','admin\edit_content@show_methods');

    // End Admin Edit Content Show Methods



    Route::post("/check_new_notifications","dashbaord_controller@check_new_notifications");

    Route::post("/general_remove_item",'dashbaord_controller@general_remove_item');


});


