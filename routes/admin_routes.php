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




Route::group(['middleware' => 'check_admin'], function () {


    #region category

    Route::get('/admin/category/save_cat/{cat_type?}','admin\category@save_cat');
    Route::get('/admin/category/save_cat/{cat_type}/{cat_id?}','admin\category@save_cat');
    Route::post('/admin/category/save_cat/{cat_type}/{cat_id?}','admin\category@save_cat');
    Route::post('/admin/category/check_validation_for_save_cat/{cat_id?}','admin\category@check_validation_for_save_cat');
    Route::post('/admin/category/delete_cat','admin\category@delete_cat');

    Route::get('/admin/category/{cat_type?}/{parent_id?}','admin\category@index')->where('parent_id', '[0-9]+');

    #endregion

    #region article
    Route::get('/admin/article/save_article/{article_id?}','admin\articles@save_article');
    Route::post('/admin/article/save_article/{article_id?}','admin\articles@save_article');
    Route::get('/admin/article/{cat_id}','admin\articles@all_article');
    #endregion



    #shops  (todary)
    Route::get('admin/shop/save/{user_id?}', 'admin\shops@save_shop');
    Route::post('admin/shop/save/{user_id?}', 'admin\shops@save_shop');
    Route::get('admin/shop/get_all_shop', 'admin\shops@get_all_shop');

    #region shops


    Route::get('admin/shop/gallery/show_all/{shop_id}','admin\shops@show_shop_gallery');
    Route::get('admin/shop/gallery/add_to_gallery/{shop_id}','admin\shops@add_to_gallery');
    Route::post('admin/shop/gallery/add_to_gallery/{shop_id}','admin\shops@add_to_gallery');


    #endregion

    #region shop times

    Route::get('admin/shop/times/show_all/{shop_id}','admin\shops@show_all_shop_times');
    Route::get('admin/shop/times/save/{shop_id}/{time_id?}','admin\shops@save_shop_times');
    Route::post('admin/shop/times/save/{shop_id}/{time_id?}','admin\shops@save_shop_times');

    #endregion

    #cities
    Route::get('admin/city/save/{city_id?}', 'admin\city@save_city');
    Route::post('admin/city/save/{city_id?}', 'admin\city@save_city');
    Route::get('admin/city/get_all_city', 'admin\city@get_all_city');


    #Barbar
    Route::get('admin/barber/save/{shop_id}/{barbar_id?}', 'admin\shops@save_barber');
    Route::post('admin/barber/save/{shop_id}/{barbar_id?}', 'admin\shops@save_barber');
    Route::get('admin/barber/get_all_barber/{shop_id}', 'admin\shops@get_all_barber');



    #Service
    Route::get('admin/service/save/{shop_id}/{service_id?}', 'admin\shops@save_service');
    Route::post('admin/service/save/{shop_id}/{service_id?}', 'admin\shops@save_service');
    Route::get('admin/service/get_all_barber/{shop_id}', 'admin\shops@get_all_service');

    #reservations
    Route::get('admin/reserve', 'admin\reservations@get_all_reserve');
    Route::post('admin/reserve/{reserve_id}', 'admin\reservations@accept_reserve');


    #region dashboard
    Route::get('admin/dashboard', 'admin\dashboard@index');
    Route::get('admin/get_dashboard_content', 'admin\dashboard@get_dashboard_content');


    Route::get('/admin/edit_settings','admin\dashboard@edit_settings');
    Route::post('/admin/edit_settings','admin\dashboard@edit_settings');
    #endregion

    #region pages
    Route::get('/admin/pages/save_page/{page_type?}/{page_id?}','admin\pages@save_page');
    Route::post('/admin/pages/save_page/{page_type?}/{page_id?}','admin\pages@save_page');
    Route::post('/admin/pages/check_validation_for_save_page/{page_id?}','admin\pages@check_validation_for_save_page');
    Route::post('/admin/pages/remove_page','admin\pages@remove_page');

    Route::get('/admin/pages/show_all/{page_type?}/{cat_id?}','admin\pages@index');
    #endregion

    #region edit_content
    Route::get('/admin/show_methods','admin\edit_content@show_methods');
    Route::get('admin/edit_content/{lang_id}/{slug}','admin\edit_content@check_function');
    Route::post('admin/edit_content/{lang_id}/{slug}','admin\edit_content@check_function');
    #endregion

    #region notifications

    Route::get('/admin/notifications/show_all','admin\notifications@index');
    Route::post('/admin/notifications/delete_notification','admin\notifications@delete_notification');

    #endregion

    #region Admin users Routing

    Route::get('admin/users/get_all_admins', 'admin\users@get_all_admins');

    Route::get('admin/users/get_all_users', 'admin\users@get_all_users');
    Route::post('admin/users/change_user_can_login', 'admin\users@change_user_can_login');

    Route::get('admin/users/save/{user_id?}', 'admin\users@save_user');
    Route::post('admin/users/save/{user_id?}', 'admin\users@save_user');

    Route::get('admin/users/assign_permission/{user_id}', 'admin\users@assign_permission');
    Route::post('admin/users/assign_permission/{user_id}', 'admin\users@assign_permission');

    Route::post('/admin/users/remove_admin','admin\users@remove_admin');

    Route::get('/admin/users/edit_user','admin\users@edit_user');
    Route::post('/admin/users/edit_user','admin\users@edit_user');

    #endregion

    #region users
    Route::get('admin/users/show_network/{user_code?}', 'admin\users@show_users_tree');
    Route::post('admin/users/calc_network_income', 'admin\users@calc_network_income');
    Route::post('admin/users/search_into_your_network', 'admin\users@search_into_your_network');
    Route::get('admin/users/list_users', 'admin\users@list_users');

    #endregion

    #region support_messages Routing

    Route::get('/admin/support_messages/{msg_type?}','admin\support_messages@index');
    Route::post('/admin/delete_support_messages','admin\support_messages@remove_msg');

    #endregion

    #region uploader
    Route::get('/admin/uploader','admin\uploader@index');
    Route::post('/upload_files','admin\uploader@load_files');

    #endregion

    #region Langs
    Route::get('/admin/langs','admin\langs@index');
    Route::get('/admin/langs/save_lang/{lang_id?}','admin\langs@save_lang');
    Route::post('/admin/langs/save_lang/{lang_id?}','admin\langs@save_lang');
    Route::post('/admin/langs/delete_lang','admin\langs@delete_lang');
    #endregion

});

