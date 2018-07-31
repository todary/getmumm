<?php

date_default_timezone_set("Africa/Cairo");

// Web Routing
Route::group(['middleware' => ['web']], function () {

    Route::get("/home",'front\HomeController@index');
    Route::get("/",'front\HomeController@index');
    Route::get("/article/{article_id}",'front\HomeController@get_article');
    Route::get("/comment/{article_id}",'front\HomeController@comment_article');







    Route::post('/upload_files','admin\uploader@load_files');


    Route::get('/admin_panel','front\register_login@register_login_view');
    Route::post('/login','front\register_login@login');
    Route::post('/register','front\register_login@register');

    Route::get('/complete_registration','front\register_login@complete_registration');


    Route::get('/support','front\HomeController@support');



    Route::get("/logout","logout@index");



    #region About Us Page
    Route::get("/about_us",'front\pages@about_page');
    Route::get("/{lang_title?}/about_us",'front\pages@about_page')->where("lang_title","([a-z]|[A-Z])([a-z]|[A-Z])");
    #endregion


    #region send_custom_message
    Route::post("/send_custom_message",'front\HomeController@send_custom_message');
    Route::post("lang_title?}/send_custom_message",'front\HomeController@send_custom_message')->where("lang_title","([a-z]|[A-Z])([a-z]|[A-Z])");
    #endregion

    #region all Pages


    #endregion


    #region Subscribe & Support

    Route::get('/contact','front\subscribe_contact@index');
    Route::get('/support','front\subscribe_contact@index');
    Route::post('/subscribe_contact/subscribe', 'front\subscribe_contact@subscribe');
    Route::post('/subscribe_contact/make_a_contact', 'front\subscribe_contact@make_a_contact');

    Route::get("/{lang_title?}".'/contact','front\subscribe_contact@index')->where("lang_title","([a-z]|[A-Z])([a-z]|[A-Z])");
    Route::get("/{lang_title?}".'/support','front\subscribe_contact@index')->where("lang_title","([a-z]|[A-Z])([a-z]|[A-Z])");
    Route::post("/{lang_title?}".'/subscribe_contact/subscribe', 'front\subscribe_contact@subscribe')->where("lang_title","([a-z]|[A-Z])([a-z]|[A-Z])");
    Route::post("/{lang_title?}".'/subscribe_contact/make_a_contact', 'front\subscribe_contact@make_a_contact')->where("lang_title","([a-z]|[A-Z])([a-z]|[A-Z])");

    #endregion


    //subscribe_cron_jop
    Route::get('/subscribe_cron_jop','subscribe_cron_jop@index');
    Route::get('/subscribe_cron_jop/show_email','subscribe_cron_jop@show_email');
    //END subscribe_cron_jop


    // Password Reset Routes...
    Route::get('password/reset/{token?}', 'Auth\ForgotPasswordController@showResetForm')->name('password.reset');
    Route::post('password/email', 'Auth\ForgotPasswordController@sendResetLinkEmail');
    Route::post('password/reset', 'Auth\ForgotPasswordController@reset');


    Route::get("upload",'Controller@ckeditor_upload');
    Route::post("upload",'Controller@ckeditor_upload');

    Route::get("browse",'Controller@ckeditor_browse');
    Route::post("browse",'Controller@ckeditor_browse');


});










