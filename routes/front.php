<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\front\HomeController;
use App\Http\Controllers\front\AuthController;



//Route::group(['middleware' => ['custom_maintenance']], function () {
//    Route::get('app/maintenance','front\HomeController@appMaintenance')->name('app.maintenance');
//    Route::get('make/host/up/omar/abdelaziz','front\HomeController@up');
//    Route::get('make/host/down/omar/abdelaziz','front\HomeController@down');
//});




Route::get('login', [AuthController::class,'Login'])->name('front.login');
Route::group(['middleware' => ['web']], function () {
    /******** HOME **********/

    //    Route::get('/home/{id}','front\HomeController@Home')->name('front.home');
    // Route::get('/home/{id}', [HomeController::class,'Home'])->name('front.home');

    Route::get('/home', [HomeController::class,'Home'])->name('front.home');

    Route::get('lang/change', 'front\HomeController@change')->name('changeLang');

    Route::get('new/lang/change/{lang}', 'front\HomeController@newLanguageChange')->name('newLangChange');

    /******** MORE **********/
    Route::get('show-more/{div?}/{id?}/{panner?}', 'front\HomeController@shoemore')->name('front_show_more');
    Route::get('contuct-us/{div?}', 'front\HomeController@contuct')->name('front_contuct_us');
    Route::get('favourit-list/{div?}', 'front\HomeController@listfav')->name('front_favourit_list');
    Route::post('add-contuct-us', 'front\HomeController@contuctadd')->name('front_add_contuct_us');
    Route::post('filter/{id?}', 'front\HomeController@filter')->name('front_filter');
    Route::get('about-us/{div?}', 'front\HomeController@about')->name('front_about_us');
    // nav_search
    Route::get('get-search-in-nav/{div?}', 'front\HomeController@ser')->name('front_nav_search');
    Route::post('add-emails', 'front\HomeController@email')->name('front_add_email');
    /******** cart **********/
    // Route::post('add-order-to-cart', 'front\HomeController@order')->name('front_add_order');
    // Route::get('cart-home/{div?}', 'front\HomeController@cart')->name('front_home_cart');
    // Route::post('delete-cart', 'front\HomeController@deletecart')->name('front_delete_cart');


    Route::post('add-order-to-cart', [HomeController::class,'order'])->name('front_add_order');
    Route::get('cart-home/{div?}',  [HomeController::class,'cart'])->name('front_home_cart');
    Route::post('delete-cart',  [HomeController::class,'deletecart'])->name('front_delete_cart');


    Route::post('count-cart', [HomeController::class,'countcart'])->name('front_count_cart');
    Route::post('copon-cart', [HomeController::class,'copon'])->name('front_copon_cart');



    Route::get('order-info/{div?}/{id}', [HomeController::class,'detialsorder'])->name('front_order_info');
    Route::post('info-store-order', [HomeController::class,'storeinfo'])->name('front_store_info');
    Route::get('order-info', [HomeController::class,'detialstow'])->name('front_pay_way');




    Route::post('finish-store-order', 'front\HomeController@finnishinfo')->name('front_finish_store_info');
    Route::get('order-info-finish/{div?}', 'front\HomeController@detialsthree')->name('front_finnish_order');
    Route::get('my-orders/{div?}', 'front\HomeController@myorders')->name('front_my_orders');
    Route::get('order-detial/{div?}/{id}', 'front\HomeController@detorder')->name('front_order_detial');
    Route::get('product-detial/{div?}/{id}', 'front\HomeController@product')->name('front_product_detial');
    Route::post('add-fav-pro', 'front\HomeController@addfav')->name('front_add_fav');
    Route::post('add-comment-pro', 'front\HomeController@addcomment')->name('front_add_comment');
    Route::post('delete-info', 'front\HomeController@Deleteinforders')->name('front_Delete_inforders');

    Route::get('order-recpt-finish', 'front\HomeController@pay2');
    Route::get('order-recpt-filed', 'front\HomeController@pay3');

    # terms and conditions
    Route::get('terms-and-conditions/{div?}', 'front\MoreController@TermsAndConditions')->name('front.terms_and_conditions');

    /******** REGISTER **********/

    # verify phone
    Route::get('verify-phone', 'front\AuthController@VerifyPhone')->name('front.verify_phone');
    # verify code
    Route::get('verify-code', 'front\AuthController@VerifyCode')->name('front.verify_code');
    # check code and user type
    Route::post('check-code', 'front\AuthController@CheckCode')->name('front.check_code');


    /******** FORGET PASSWORD **********/

    # forget password - verify-phone page
    Route::get('forget-password/verify-phone', 'front\PasswordController@VerifyPhone')->name('front.forget_password.verify_phone');
    # forget password - verify-code page
    Route::get('forget-password/verify-code', 'front\PasswordController@VerifyCode')->name('front.forget_password.verify_code');
    # forget password - check-code
    Route::post('forget-password/verify-code', 'front\PasswordController@CheckCode')->name('front.forget_password.check_code');
    # forget password - new-password page
    Route::get('forget-password/new-password', 'front\PasswordController@NewPassword')->name('front.forget_password.new_password');
    # forget password - update-password
    Route::post('forget-password/update-password', 'front\PasswordController@UpdatePassword')->name('front.forget_password.update_password');


    # forget password send code
    Route::post('forget-send-code', 'front\user\auth\PasswordController@ForgetSendCode')->name('front.forget_send_code');
    # forget password - verify code
    Route::get('verification-code', 'front\user\auth\PasswordController@Verification')->name('front.verification');
    # forget check code
    Route::post('forget-check-code', 'front\user\auth\PasswordController@ForgetCheckCode')->name('front.forget_check_code');
    # update password
//    Route::get('update-password','front\user\auth\PasswordController@UpdatePassword')->name('front.update_password');
    # save new password
    Route::post('save-new-password', 'front\user\auth\PasswordController@SaveNewPassword')->name('front.save_new_password');

    Route::get('create-checkout-session', 'front\HomeController@CreateCheckoutSession');
    Route::get('cc', function () {
        return auth()->getDefaultDriver();
    });

    Route::get('/app/android', function () {
        return view('front.application.android');
    })->name('app.android');

    Route::get('/app/iphone', function () {
        return view('front.application.iphone');
    })->name('app.iphone');

    Route::get('play','front\HomeController@play');

    Route::get('make/host/down/omar/abdelaziz','front\HomeController@down');

});
Route::get('make/host/up/omar/abdelaziz','front\HomeController@up');
Route::get('app/maintenance','front\HomeController@appMaintenance')->name('app.maintenance');

Route::get('playing','front\HomeController@playing')->name('playing');


// product-detial
// add to cart button :
//     background-color: #FF69B4;
//    border-color: ##FF69B44;
//    border-color: blanchedalmond;
// and remove twitter button


// MySql Database = u702466874_jamlia
// MySql User = u702466874_jamlia_user
// MySql Password = Jamlia123@#



//DB_CONNECTION=mysql
//DB_HOST=127.0.0.1
//DB_PORT=3306
//DB_DATABASE=u702466874_BQwMW
//DB_USERNAME=u702466874_loEE4
//DB_PASSWORD=VAeatT8b4j


//ssh -p 65002 u863056333@185.206.161.130
//OmarGado123@#


//Cpanel
//https://194.195.92.194:2083
//gadoeg
//Aa01151263677102