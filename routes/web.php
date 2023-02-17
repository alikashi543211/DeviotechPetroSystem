<?php

use App\Category;
use Illuminate\Routing\Router;
use Illuminate\Support\Facades\Route;
use PDF as PDF;

// Front Routes
Route::get('verify-engineer/{id}', 'HomeController@verify_engineer')->name('verify_engineer');

// auth routes
Auth::routes();

// Dropbox Routes
Route::group(['middleware' => ['auth', 'DropboxAuthenticated']], function(){
    Route::get('dropbox/{path?}', 'HomeController@dropboxConnection')->name('dropbox');
    Route::get('dropbox/oauth', function(){
        return Dropbox::connect();
    })->name('dropbox_auth');
});
Route::get('/disconnect-dropbox', 'HomeController@dropboxDisconnect')->name('disconnect.dropbox');

// admin routes group
Route::prefix('admin')->namespace('Admin')->middleware(['auth', 'admin'])->group(function () {
    Route::group(['middleware' => ['auth','admin']], function() {

    	Route::get('/dashboard', 'AdminController@dashboard')->name('admin.dashboard');

		// contact routes
		Route::get('/add_newcontact','ContactController@add_newcontact')->name('add_newcontact');
		Route::post('createcontact','ContactController@createcontact')->name('createcontact');
		Route::get('/contactlist','ContactController@list')->name('contactlist');
		Route::post('/contact-allocate-van','ContactController@allocateVan')->name('contact.allocate.van');
		Route::get('/editcontact/{id}','ContactController@editcontact')->name('editcontact');
		Route::post('/updatecontact/{id}','ContactController@updatecontact')->name('updatecontact');
		Route::get('deletecontact/{id}','ContactController@deletecontact')->name('deletecontact');


		//category routes
		Route::get('addcategory','CategoryController@addcategory')->name('addcategory');
		Route::post('createcategory','CategoryController@createcategory')->name('createcategory');
		Route::get('listcategory','CategoryController@listcategory')->name('listcategory');
		Route::get('editcategory/{id}','CategoryController@editcategory')->name('editcategory');
		Route::post('updatecategory/{id}','CategoryController@updatecategory')->name('updatecategory');
		Route::get('deletecategory/{id}','CategoryController@deletecategory')->name('deletecategory');

		//Job type routes
		Route::get('addjobtype','JobTypeController@addjobtype')->name('addjobtype');
		Route::post('createjobtype','JobTypeController@createjobtype')->name('createjobtype');
		Route::get('listjobtype','JobTypeController@listjobtype')->name('listjobtype');
		Route::get('editjobtype/{id}','JobTypeController@editjobtype')->name('editjobtype');
		Route::post('updatejobtype/{id}','JobTypeController@updatejobtype')->name('updatejobtype');
		Route::get('deletejobtype/{id}','JobTypeController@deletejobtype')->name('deletejobtype');

		// Customer controller routes
		Route::get('addcustomer','CustomerController@addcustomer')->name('addcustomer');
		Route::post('storecustomer','CustomerController@storecustomer')->name('storecustomer');
		Route::get('listcustomer','CustomerController@listcustomer')->name('listcustomer');
		Route::get('deletecustomer/{id}','CustomerController@deletecustomer')->name('deletecustomer');
		Route::get('editcustomer/{id}','CustomerController@editcustomer')->name('editcustomer');
        Route::post('updatecustomer/{id}','CustomerController@updatecustomer')->name('updatecustomer');
		Route::get('getcustomer/{id}', 'CustomerController@getcustomer')->name('getcustomer');
		Route::get('customer-emails/{id}','CustomerController@setEmails')->name('customer.set.emails');
		Route::post('customer-update-emails/{id}','CustomerController@updateEmails')->name('customer.update.emails');
		//Site details
		Route::group(['prefix' => 'site_detail'], function(){
			Route::post('add/{customer_id?}', 'CustomerController@addSiteDetail')->name('site.detail.add');
		});

		//tool controller routes
		Route::get('tool_add','ToolController@tool_add')->name('tool_add');
		Route::post('store_tool','ToolController@store_tool')->name('store_tool');
		Route::get('tool_index','ToolController@tool_index')->name('tool_index');
		Route::get('tool_edit/{id}','ToolController@tool_edit')->name('tool_edit');
		Route::post('tool_update/{id}','ToolController@tool_update')->name('tool_update');
		Route::get('tool_delete/{id}','ToolController@tool_delete')->name('tool_delete');
		Route::get('tool_issue','ToolController@tool_issue')->name('tool_issue');
		Route::post('tool_issue','ToolController@tool_issue_save')->name('tool_issue');
        Route::get('get_tool/{id}','ToolController@get_tool')->name('get_tool');
		Route::get('tool_return','ToolController@tool_return')->name('tool_return');
		Route::post('tool_return','ToolController@tool_return_save')->name('tool_return');

		//purchase order routes
		Route::get('store_po_add_form','StorePOController@store_po_add_form')->name('store_po_add_form');
		Route::post('store_po','StorePOController@store_po')->name('store_po');
		Route::get('store_po_index','StorePOController@store_po_index')->name('store_po_index');
		Route::get('store_po_edit/{id}','StorePOController@store_po_edit')->name('store_po_edit');
		Route::post('store_po_update/{id}','StorePOController@store_po_update')->name('store_po_update');
		Route::get('store_po_delete/{id}','StorePOController@store_po_delete')->name('store_po_delete');
		Route::get('store_po_email','StorePOController@store_po_email')->name('store_po_email');


		// supplier
		Route::get('/supplier/{id?}', 'AdminController@supplier')->name('supplier');
		Route::post('/add_supplier', 'AdminController@add_supplier')->name('add_supplier');
		Route::get('/supplier_list', 'AdminController@supplier_list')->name('supplier_list');
		Route::get('/remove_supplier', 'AdminController@remove_supplier')->name('remove_supplier');

		// stock
		Route::get('/stock/{id?}', 'AdminController@stock')->name('stock');
		Route::post('/add_stock', 'AdminController@add_stock')->name('add_stock');
		Route::get('/stock_list', 'AdminController@stock_list')->name('stock_list');
		Route::get('/remove_stock', 'AdminController@remove_stock')->name('remove_stock');
		// receipet
		Route::get('/receipt/{id?}', 'AdminController@receipt')->name('receipt');
		Route::post('/add_receipt', 'AdminController@add_receipt')->name('add_receipt');
		Route::get('/receipt_list/{id?}', 'AdminController@receipt_list')->name('receipt_list');
		Route::get('/remove_receipt', 'AdminController@remove_receipt')->name('remove_receipt');
		// pump make and model
		Route::get('/pump_make_and_model/list', 'PumpAndModelController@pumpList')->name('pump_list');
		Route::post('/add_pump_make_and_model', 'PumpAndModelController@add_pump_make_and_model')->name('add_pump_make_and_model');
		Route::get('/pump_make_and_model_list', 'PumpAndModelController@pump_make')->name('pump_make_and_model_list');
		Route::get('/remove_pump_make_and_model/{id?}', 'PumpAndModelController@remove_pump_make_and_model')->name('delete.pump_make_and_model');
		Route::get('/edit_pump_make_and_model/{id?}', 'PumpAndModelController@Edit')->name('pump_make_and_model.edit');
		Route::get('/pump_make_and_model/{id?}', 'PumpAndModelController@pump_make_and_model')->name('pump_make_and_model');
		// staff
		Route::get('/signatory/{id?}', 'SignatoryController@signatory')->name('signatory');
		Route::post('/add_signatory', 'SignatoryController@add_signatory')->name('add_signatory');
		Route::get('/signatory_list', 'SignatoryController@signatory_list')->name('signatory_list');
		Route::get('/remove_signatory', 'SignatoryController@remove_signatory')->name('remove_pump_make_and_model');
		// Staff
		Route::get('/list', 'StaffController@list')->name('staff.list');
		Route::post('/add_staff', 'StaffController@add_staff')->name('add_staff');
		Route::get('/staff_list', 'StaffController@staff_list')->name('staff_list');
		Route::get('/remove_staff/{id?}', 'StaffController@remove_staff')->name('delete.staff');
		Route::get('/edit_staff/{id?}', 'StaffController@edit')->name('staff.edit');
		Route::get('/staff/{id?}', 'StaffController@staff')->name('staff');
	});

	Route::group(['middleware' => 'auth'], function(){
		Route::get('/user_profile', 'AdminController@user_Profile')->name('user_Profile');
    });

    Route::name('contract.')->prefix('contract')->middleware('auth')->group(function(){
        Route::get('add', 'ContractController@add')->name('add');
        Route::post('save/{id?}','ContractController@save')->name('save');
		Route::get('list','ContractController@list')->name('list');
		Route::get('edit/{id}/{tab?}','ContractController@edit')->name('edit');
        Route::get('delete/{id}/{tab?}','ContractController@delete')->name('delete');
    });

    Route::name('letter.')->prefix('letter')->middleware('auth')->group(function(){
        Route::get('add', 'LetterController@add')->name('add');
        Route::post('save/{id?}','LetterController@save')->name('save');
		Route::get('list','LetterController@list')->name('list');
		Route::get('edit/{id}','LetterController@edit')->name('edit');
        Route::get('delete/{id}','LetterController@delete')->name('delete');
    });

	Route::name('job.')->prefix('job')->middleware('auth')->group(function(){

		Route::get('add','JobController@add')->name('add');
		Route::post('save/{id?}','JobController@save')->name('save');
		Route::get('list/{id?}','JobController@list')->name('list');
		Route::get('edit/{id?}/{tab?}','JobController@edit')->name('edit');
		Route::get('edit-eng','JobController@changeEngineer')->name('change_engineer');
		Route::get('edit-work-status','JobController@worksCompleted')->name('works_completed');
		Route::get('delete/{id}','JobController@delete')->name('delete');

		Route::group(['prefix' => 'communication'], function(){
			Route::get('list/{job_id}', 'JobController@getJobCommunications')->name('get.communications');
			Route::get('edit/{id}', 'JobController@editJobCommunication')->name('edit.communication');
			Route::get('delete/{id}', 'JobController@deleteJobCommunication')->name('delete.communication');
			Route::post('save/{id?}', 'JobController@saveJobCommunication')->name('save.communication');
		});

		Route::group(['prefix' => 'job_card_customer'], function(){
			Route::get('list/{job_id}', 'JobController@getJobCardCustomer')->name('get.job_card_customer');
		});

		Route::group(['prefix' => 'job_card_internal'], function(){
			Route::get('list/{job_id}', 'JobController@getJobCardInternal')->name('get.job_card_internal');
			Route::get('edit', 'JobController@editJobCardInternal')->name('edit.job_card_internal');
			Route::post('save', 'JobController@saveJobCardInternal')->name('job_card_internal.save');
			Route::post('check-password', 'JobController@checkEditPassword')->name('job_card_internal.check.password');
		});

		Route::group(['prefix' => 'labour'], function(){
			Route::get('list/{job_id}', 'JobController@getJobLabours')->name('get.labours');
			Route::get('edit/{id}', 'JobController@editJobLabour')->name('edit.labour');
			Route::get('delete/{id}', 'JobController@deleteJobLabour')->name('delete.labour');
			Route::post('save/{id?}', 'JobController@saveJobLabour')->name('save.labour');
		});

		Route::group(['prefix' => 'purchase'], function(){
			Route::get('job-purchase-email/{id?}', 'JobController@job_purchase_email')->name('job_purchase_email');
			Route::get('list/{job_id}', 'JobController@getJobPurchases')->name('get.purchases');
			Route::get('edit/{id}', 'JobController@editJobPurchase')->name('edit.purchase');
			Route::get('delete/{id}', 'JobController@deleteJobPurchase')->name('delete.purchase');
			Route::post('save/{id?}', 'JobController@saveJobPurchase')->name('save.purchase');
		});

		Route::group(['prefix' => 'email'], function(){
			Route::get('list/{job_id}', 'JobController@getJobEmails')->name('get.emails');
			Route::get('edit/{id}', 'JobController@editJobEmail')->name('edit.email');
			Route::get('edit_staff/{id}', 'JobController@editJobEmail_staff')->name('edit.email_staff');
			Route::get('delete/{id}', 'JobController@deleteJobEmail')->name('delete.email');
			Route::post('save/{id?}', 'JobController@saveJobEmail')->name('save.email');
		});

		Route::group(['prefix' => 'job_document'], function(){
			Route::get('list/{job_id}','JobController@getJobDocument')->name('get.job_document');
			Route::post('save/{id?}','JobController@saveJobDocument')->name('save.document');
			Route::get('delete/{job_id?}/{id?}','JobController@deletedocument')->name('deletedocument');
		});

		Route::group(['prefix' => 'verif_quotations'], function(){
			Route::get('list/{job_id}','JobController@getVerifQuotation')->name('get.verif_quotations');
			Route::post('save', 'JobController@saveVerifQuotation')->name('save.verif_quotation');
		});




		Route::group(['prefix' => 'stock'], function(){
			Route::get('list/{job_id}', 'JobController@getJobStocks')->name('get.stocks');
			Route::get('edit/{id}', 'JobController@editJobStock')->name('edit.stock');
			Route::get('delete/{id}', 'JobController@deleteJobStock')->name('delete.stock');
			Route::post('save/{id?}', 'JobController@saveJobStock')->name('save.stock');
		});

		Route::group(['prefix' => 'job_engineers'], function(){
			Route::get('list/{job_id}', 'JobController@job_engineers')->name('get.job_engineers');
			Route::post('job_engineer_save/{id?}','JobController@saveJobEngineer')->name('job_engineers.save');
		});

		Route::group(['prefix' => 'quotation'], function(){
			Route::get('list/{job_id}', 'JobController@quotations')->name('get.quotations');
			Route::get('lost-list/{job_id}', 'JobController@lostQuotations')->name('get.lost.quotations');
		});

		Route::group(['prefix' => 'certificate'], function(){
			Route::get('form/{job_id}', 'JobController@certificate_form')->name('get.certificate_form');
			Route::post('save/{id?}', 'JobController@saveJobCertificate')->name('save.certificate');
		});
		Route::group(['prefix' => 'pump-certifieds'], function(){
			Route::get('list/{job_id}', 'JobController@pump_certifieds')->name('get.pump_certifieds');
			Route::post('save-pump-certified', 'JobController@save_pump_certified')->name('save.pump_certified');
			Route::get('edit/{id}', 'JobController@edit_pump_certified')->name('edit.pump_certified');
			Route::post('update-pump-certified/{id}', 'JobController@update_pump_certified')->name('update.pump_certified');
			Route::get('delete/{id}', 'JobController@delete_pump_certified')->name('delete.pump_certified');
		});
	});

	Route::name('quotation.')->prefix('quotation')->middleware('auth')->group(function(){
		Route::get('add','QuotationController@add')->name('add');
		Route::post('save/{id?}','QuotationController@save')->name('save');
		Route::get('list','QuotationController@list')->name('list');
		Route::get('lost-list','QuotationController@lostList')->name('lost.list');
		Route::get('edit/{id}/{tab?}','QuotationController@edit')->name('edit');
		Route::get('delete/{id}','QuotationController@delete')->name('delete');

		Route::group(['prefix' => 'item'], function(){
			Route::get('list/{quotation_id}', 'QuotationController@getQuotationItems')->name('get.items');
			Route::get('edit/{id}', 'QuotationController@editQuotationItem')->name('edit.item');

			Route::get('delete/{id}', 'QuotationController@deleteQuotationItem')->name('delete.item');
			Route::post('save/{id?}', 'QuotationController@saveQuotationItem')->name('save.item');
		});
		//quotation documents
		Route::group(['prefix' => 'q_document'], function(){
			Route::get('list/{quotation_id}','QuotationController@get_Q_Document')->name('get.q_document');
			Route::post('save/{id?}','QuotationController@save_Q_Document')->name('save.document');
			Route::get('delete/{q_id}/{id}','QuotationController@delete_Q_document')->name('deletedocument');
		});
		//convert to job
		Route::get('move_to_job/{id}','QuotationController@move_to_job')->name('move_to_job');

		Route::group(['prefix' => 'payment'], function(){
			Route::get('list/{quotation_id}', 'QuotationController@getQuotationPayments')->name('get.payments');
			Route::get('edit/{id}', 'QuotationController@editQuotationPayment')->name('edit.payment');
			Route::get('delete/{id}', 'QuotationController@deleteQuotationPayment')->name('delete.payment');
			Route::post('save/{id?}', 'QuotationController@saveQuotationPayment')->name('save.payment');
		});

    });

    Route::name('verif_quotation.')->prefix('verif_quotation')->middleware('auth')->group(function(){
        Route::get('add', 'VerifQuotationController@add')->name('add');
        Route::post('save/{id?}','VerifQuotationController@save')->name('save');
		Route::get('list','VerifQuotationController@list')->name('list');
		Route::get('edit/{id}','VerifQuotationController@edit')->name('edit');
        Route::get('delete/{id}','VerifQuotationController@delete')->name('delete');

        Route::group(['prefix' => 'item'], function(){
			Route::get('list/{quotation_id}', 'VerifQuotationController@getQuotationItems')->name('get.items');
			Route::get('edit/{id}', 'VerifQuotationController@editQuotationItem')->name('edit.item');
			Route::get('delete/{id}', 'VerifQuotationController@deleteQuotationItem')->name('delete.item');
			Route::post('save/{id?}', 'VerifQuotationController@saveQuotationItem')->name('save.item');
        });

        //verif quotation documents
		Route::group(['prefix' => 'q_document'], function(){
            Route::get('list/{quotation_id}','VerifQuotationController@get_Q_Document')->name('get.q_document');
			Route::post('save/{id?}','VerifQuotationController@save_Q_Document')->name('save.document');
			Route::get('delete/{q_id}/{id}','VerifQuotationController@delete_Q_document')->name('deletedocument');
		});

        //convert to job
		Route::get('move_to_job/{id}','VerifQuotationController@move_to_job')->name('move_to_job');
    });

    Route::name('engineer_job.')->prefix('engineer_job')->middleware('auth')->group(function(){
		Route::get('list','EngineerJobController@list')->name('list');
    });


    Route::name('quotation_type.')->prefix('quotation_type')->middleware('auth')->group(function(){
        Route::get('add', 'QuotationTypeController@add')->name('add');
        Route::post('save/{id?}','QuotationTypeController@save')->name('save');
		Route::get('list','QuotationTypeController@list')->name('list');
		Route::get('edit/{id}','QuotationTypeController@edit')->name('edit');
        Route::get('delete/{id}','QuotationTypeController@delete')->name('delete');
	});

	Route::name('block.')->prefix('block')->middleware('auth')->group(function(){
		Route::get('block_list','BlockController@list')->name('list');
		Route::get('block_add','BlockController@add')->name('add');
		Route::post('block_save/{id?}','BlockController@save')->name('save');
		Route::get('block_edit/{id}','BlockController@edit')->name('edit');
		Route::get('block_delete/{id}','BlockController@delete')->name('delete');
	});
	Route::name('communication.')->prefix('communication')->middleware('auth')->group(function(){
		Route::get('communication_list','CommunicationController@list')->name('list');
		Route::get('communication_add','CommunicationController@add')->name('add');
		Route::post('communication_save/{id?}','CommunicationController@save')->name('save');
		Route::get('communication_edit/{id}','CommunicationController@edit')->name('edit');
		Route::get('communication_delete/{id}','CommunicationController@delete')->name('delete');
    });

	Route::name('account_type.')->prefix('account_type')->middleware('auth')->group(function(){
        Route::get('add', 'AccountTypeController@add')->name('add');
        Route::post('save/{id?}','AccountTypeController@save')->name('save');
		Route::get('list','AccountTypeController@list')->name('list');
		Route::get('edit/{id}','AccountTypeController@edit')->name('edit');
        Route::get('delete/{id}','AccountTypeController@delete')->name('delete');
    });

 	Route::name('vat.')->prefix('vat')->middleware('auth')->group(function(){
        Route::get('add', 'VatController@add')->name('add');
        Route::post('save/{id?}','VatController@save')->name('save');
		Route::get('list','VatController@list')->name('list');
		Route::get('edit/{id}','VatController@edit')->name('edit');
        Route::get('delete/{id}','VatController@delete')->name('delete');
    });

    Route::name('cc.')->prefix('cc')->middleware('auth')->group(function(){
        Route::get('add', 'CcEmailController@add')->name('add');
        Route::post('save/{id?}','CcEmailController@save')->name('save');
		Route::get('list','CcEmailController@list')->name('list');
		Route::get('edit/{id}','CcEmailController@edit')->name('edit');
    });

     Route::name('availbility.')->prefix('availbility')->middleware('auth')->group(function(){
        Route::get('add', 'AvailbilityController@add')->name('add');
        Route::post('save/{id?}','AvailbilityController@save')->name('save');
		Route::get('list','AvailbilityController@list')->name('list');
		Route::get('edit/{id}','AvailbilityController@edit')->name('edit');
        Route::get('delete/{id}','AvailbilityController@delete')->name('delete');
    });

	     Route::name('warranty.')->prefix('warranty')->middleware('auth')->group(function(){
	        Route::get('add', 'WarrantyController@add')->name('add');
	        Route::post('save/{id?}','WarrantyController@save')->name('save');
			Route::get('list','WarrantyController@list')->name('list');
			Route::get('edit/{id}','WarrantyController@edit')->name('edit');
	        Route::get('delete/{id}','WarrantyController@delete')->name('delete');
	    });

	     Route::name('payment_term.')->prefix('payment_term')->middleware('auth')->group(function(){
	        Route::get('add', 'PaymentTermController@add')->name('add');
	        Route::post('save/{id?}','PaymentTermController@save')->name('save');
			Route::get('list','PaymentTermController@list')->name('list');
			Route::get('edit/{id}','PaymentTermController@edit')->name('edit');
	        Route::get('delete/{id}','PaymentTermController@delete')->name('delete');
    });

    Route::name('equipment.')->prefix('equipment')->middleware('auth')->group(function(){
        Route::get('add', 'EquipmentController@add')->name('add');
        Route::post('save/{id?}','EquipmentController@save')->name('save');
		Route::get('list','EquipmentController@list')->name('list');
		Route::get('edit/{id}','EquipmentController@edit')->name('edit');
        Route::get('delete/{id}','EquipmentController@delete')->name('delete');
    });

	Route::name('customer_history.')->prefix('customer_history')->middleware('auth')->group(function(){
        Route::get('history/{id?}/{tab?}', 'HistoryController@index')->name('history');
        Route::post('save-service-contracts/{id?}', 'HistoryController@save_service_contracts')->name('save_services');

    });

    Route::name('system_setting.')->prefix('system_setting')->middleware('auth')->group(function(){
        Route::get('settings', 'SystemSettingController@settings')->name('settings');
		Route::post('general', 'SystemSettingController@general')->name('general');
    });

    Route::name('reports.')->prefix('report')->middleware('auth')->group(function(){
    	Route::get('filter_stock_movement', 'ReportsController@filter_stock_movement')->name('filtered.stocks_movement');
    	Route::get('job-email', 'ReportsController@job_email')->name('job_email');

    	Route::get('job-purchase-order', 'ReportsController@job_purchase_order')->name('job_purchase_order');
    	Route::get('filter_stock_report', 'ReportsController@filter_stock')->name('filtered.stocks');
    	Route::get('stock_balance', 'ReportsController@stock_balance')->name('stock_balance');
    	Route::get('stocks_movement', 'ReportsController@stocks_movement')->name('stocks.movement');
		Route::get('verification-quotation-xls/{id?}', 'ReportsController@verif_quotation_xls')->name('verif.quotation_xls');
		Route::get('callibri-quotation/{id?}', 'ReportsController@callibri_quotation')->name('callibri_quotation');
		Route::get('stocks', 'ReportsController@stocks')->name('stocks');
    	Route::get('quotation-xls/{id?}', 'ReportsController@quotation_xls')->name('quotation_xls');
    	Route::get('job-detail-xls/{id?}', 'ReportsController@job_detail_xls')->name('job_detail_xls');
    	Route::get('job-certificate/{id?}', 'ReportsController@job_certificate')->name('job_certificate');
    	Route::get('job-details/{id?}', 'ReportsController@job_details')->name('job_details');
    	Route::get('quotation/{id?}', 'ReportsController@quotation')->name('quotation');

        Route::get('jobs', 'ReportsController@jobs')->name('jobs');
        Route::get('purchase_order/{id}', 'ReportsController@purchase_order')->name('purchase_order');
        Route::get('tools-list', 'ReportsController@tools_list')->name('tools_list');
        Route::get('tools-issued-list/{id?}', 'ReportsController@tools_issued_list')->name('tools_issued_list');
        Route::get('tools-returned-list/{id?}', 'ReportsController@tools_returned_list')->name('tools_returned_list');
		Route::post('all-jobs', 'ReportsController@all_jobs')->name('all_jobs');
		Route::get('job_card_customer/{id?}', 'ReportsController@job_card_customer')->name('job_card_customer');
		Route::get('job_card_internal/{id?}', 'ReportsController@job_card_internal')->name('job_card_internal');

    });

	Route::group(['prefix' => 'issued_tools'], function(){
		Route::get('list', 'IssuedToolsController@issued_tools_list')->name('get.issued_tools');
		Route::get('edit/{id}', 'IssuedToolsController@edit')->name('edit.issued_tools');
		Route::get('delete/{id}', 'IssuedToolsController@delete')->name('delete.issued_tools');
		Route::get('add', 'IssuedToolsController@show_form')->name('show.form');
		Route::post('save/{id?}', 'IssuedToolsController@store_issued_tools')->name('save.issued_tools');
		Route::get('returned/{id?}', 'IssuedToolsController@returned_tool')->name('tool.returned');
		Route::get('returned_tools', 'IssuedToolsController@returned_tools')->name('get.returned_tools');
	});
	Route::group(['prefix' => 'templates'], function(){
		Route::get('list', 'TemplateController@list')->name('get.templates');
		Route::get('edit/{id}', 'TemplateController@edit')->name('edit.template');
		Route::get('delete/{id}', 'TemplateController@delete')->name('delete.template');
		Route::get('add', 'TemplateController@show_form')->name('show.template_form');
		Route::post('save/{id?}', 'TemplateController@store')->name('save.templates');

    });

    Route::group(['prefix' => 'documents'], function () {
        Route::get('templates', 'DocumentController@template')->name('doc.template');
        Route::post('template-upload', 'DocumentController@template_upload')->name('doc.template.upload');

        Route::get('site_procedure', 'DocumentController@site_procedure')->name('doc.site_procedure');
        Route::post('site_procedure-upload', 'DocumentController@site_procedure_upload')->name('doc.site_procedure.upload');

        Route::get('quality', 'DocumentController@quality')->name('doc.quality');
        Route::post('quality-upload', 'DocumentController@quality_upload')->name('doc.quality.upload');

        Route::get('delete-doc', 'DocumentController@delete_document')->name('doc.delete');
    });
});

Route::get('/', 'HomeController@check_user');
// home controller
Route::get('/home', 'HomeController@check_user')->name('home')->middleware('auth');
// logout
Route::get('/logout', 'profileController@logOut')->name('logout')->middleware('auth');
// reset password
Route::post('/reset_password', 'profileController@resetPassword')->name('reset_password')->middleware('auth');
// update profile
Route::post('/update_profile', 'profileController@update_Profile')->name('update_profile')->middleware('auth');

Route::prefix('engineer')->name('engineer.')->namespace('Engineer')->middleware(['auth','engineer'])->group(function () {
	Route::get('/dashboard','DashboardController@Index')->name('index');
	Route::name('jobs.')->prefix('jobs')->group(function(){
		Route::get('list','JobController@List')->name('list');
	});
	Route::name('profile.')->prefix('profile')->group(function(){
		Route::get('/','ProfileController@Profile')->name('index');
		Route::post('reset_password','ProfileController@resetPassword')->name('reset_password');
	});
	Route::name('form.')->prefix('form')->group(function(){
		Route::get('/add','FormController@Form')->name('form');
		Route::post('save','FormController@saveForm')->name('save');
		Route::post('images-save','FormController@saveImages')->name('images.save');
	});
	Route::name('ajax.')->prefix('ajax')->group(function(){
		Route::name('profile.')->prefix('profile')->group(function(){
			Route::get('reset_email','ProfileController@resetEmail')->name('reset_email');
		});
	});
});

