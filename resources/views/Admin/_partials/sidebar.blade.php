<div class="sidebar" data-color="danger" data-background-color="white" data-image="{{asset('admin_theme')}}/petro-logo.png">
  <div class="logo">
      <a href="{{ route('admin.dashboard') }}" class="simple-text logo-normal">
          <img src="{{ asset('admin_theme/petro-logo.png') }}" width="120" class="img-fluid">
      </a>
  </div>
  <div class="sidebar-wrapper">
      <ul class="nav">
          @if(auth()->user()->role == 'admin')
          <li class="nav-item {{ Route::currentRouteName() == 'admin.dashboard' ? 'active' : '' }}">
              <a class="nav-link" href="{{url('/admin/dashboard')}}">
                <i class="material-icons">dashboard</i>
                <p>Dashboard</p>
              </a>
          </li>
          @endif
          <!-- add job -->
          <li class="nav-item {{ Route::currentRouteName() == 'job.add' || Route::currentRouteName() == 'job.list' ? 'active' : '' }}">
              <a class="nav-link active" href="{{route('job.list')}}">
                  <i class="material-icons">work</i>
                  <p>Jobs</p>
              </a>
          </li>
          <li class="nav-item {{ Route::currentRouteName() == 'engineer_job.list' ? 'active' : '' }}">
              <a class="nav-link active" href="{{route('engineer_job.list')}}">
                  <i class="material-icons">assignment_ind</i>
                  <p>Engineer Jobs</p>
              </a>
          </li>
          <!-- add quotation -->
          <li class="nav-item {{ Route::currentRouteName() == 'quotation.add' || Route::currentRouteName() == 'quotation.list' ? 'active' : '' }} ">
              <a class="nav-link" href="{{route('quotation.list')}}">
                  <i class="material-icons">euro</i>
                  <p>Quotations</p>
              </a>
          </li>

          <li class="nav-item {{ Route::currentRouteName() == 'quotation.lost.list' || Route::currentRouteName() == 'quotation.loss.list' ? 'active' : '' }} ">
              <a class="nav-link" href="{{route('quotation.lost.list')}}">
                  <i class="material-icons">bookmark</i>
                  <p>Archive Quotations</p>
              </a>
          </li>
          <!-- add verification quotation -->
          <li class="nav-item {{ Route::currentRouteName() == 'verif_quotation.add' || Route::currentRouteName() == 'verif_quotation.list' ? 'active' : '' }} ">
              <a class="nav-link" href="{{route('verif_quotation.list')}}">
                  <i class="material-icons">backup_table</i>
                  <p>Verification Quotations</p>
              </a>
          </li>

          <!-- add contract -->
          <li class="nav-item {{ Route::currentRouteName() == 'contract.add' || Route::currentRouteName() == 'contract.list' ? 'active' : '' }} ">
              <a class="nav-link" href="{{route('contract.list')}}">
                  <i class="material-icons">add_task</i>
                  <p>Contracts</p>
              </a>
          </li>
          <li class="nav-item {{ Route::currentRouteName() == 'addcategory' || Route::currentRouteName() == 'listcategory' ? 'active' : '' }} ">
              <a class="nav-link" href="{{url('/admin/listcategory')}}">
              <i class="material-icons">category</i>
              <p>Categories</p>
          </a>
          <!-- <li class="nav-item">
                <a class="nav-link" href="{{url('/admin/addcategory')}}">
                  <span>Add Category</span>
                </a>
              </li> -->
          </li>
          <li class="nav-item {{ Route::currentRouteName() == 'addcustomer' || Route::currentRouteName() == 'listcustomer' ? 'active' : '' }} ">
              <a class="nav-link" href="{{url('/admin/listcustomer')}}">
                  <i class="material-icons">how_to_reg</i>
                  <p>Customers</p>
              </a>
          <!-- <li class="nav-item">
                <a class="nav-link" href="{{url('/admin/addcustomer')}}">
                  {{-- <i class="fa fa-home"></i> --}}
                  <span>Add Customer</span>
                </a>
              </li> -->
          </li>

          <li class="nav-item {{ Route::current()->action['prefix'] == 'admin/report' ? 'active' : '' }}">
              <a class="nav-link" href="#" data-toggle="collapse" data-target="#reports">
                  <i class="material-icons">construction</i>
                  <p>Reports </p>
              </a>
              <div id="reports" class="collapse {{ Route::current()->action['prefix'] == 'admin/report' ? 'show' : '' }}">
                  <ul class='collapsein'>
                  <li class="nav-item {{ Route::currentRouteName() == 'reports.jobs' ? 'active' : '' }}">
                    <a class="nav-link" href="{{ route('reports.jobs') }}">
                      <span>Jobs Reports</span>
                    </a>
                  </li>
                  <li class="nav-item {{ Route::currentRouteName() == 'reports.stocks' ? 'active' : '' }}">
                    <a class="nav-link" href="{{ route('reports.stocks') }}">
                      <span>Stock Purchases</span>
                    </a>
                  </li>
                  <li class="nav-item {{ Route::currentRouteName() == 'reports.stocks.movement' ? 'active' : '' }}">
                    <a class="nav-link" href="{{ route('reports.stocks.movement') }}">
                      <span>Stock Movement</span>
                    </a>
                  </li>
                  <li class="nav-item {{ Route::currentRouteName() == 'reports.stock_balance' ? 'active' : '' }}">
                    <a class="nav-link" href="{{ route('reports.stock_balance') }}">
                      <span>Stock Balance</span>
                    </a>
                  </li>
                </ul>
              </div>
          </li>

        @if(auth()->user()->role == 'admin')
        <!-- add new contact -->
        <li class="nav-item {{ Route::currentRouteName() == 'add_newcontact' || Route::currentRouteName() == 'contactlist' ? 'active' : '' }} ">
          <a class="nav-link" href="{{url('/admin/contactlist')}}">
            <i class="material-icons">contact_page</i>
            <p>Engineers / Contacts</p>
          </a>
          <!-- <li class="nav-item {{ Route::currentRouteName() == 'add_newcontact' ? 'active' : '' }}">
                <a class="nav-link" href="{{url('/admin/add_newcontact')}}">
                  <span>Add contact</span>
                </a>
              </li> -->
        </li>
        {{--
        <li class="nav-item {{ Route::currentRouteName() == 'letter.add' || Route::currentRouteName() == 'letter.list' ? 'active' : '' }} ">
          <a class="nav-link" href="{{route('letter.list')}}">
            <i class="material-icons">drafts</i>
            <p>Letters</p>
          </a>
          <!-- <li class="nav-item">
                <a class="nav-link" href="{{route('letter.add')}}">
                  <span>Add Letter</span>
                </a>
              </li> -->
        </li>
        --}}


        <li class="nav-item {{ Route::currentRouteName() == 'signatory' || Route::currentRouteName() == 'signatory_list' ? 'active' : '' }} ">
          <a class="nav-link" href="{{url('/admin/signatory_list')}}">
            <i class="material-icons">article</i>
            <p>Signatories</p>
          </a>
          <!-- <li class="nav-item">
                <a class="nav-link" href="{{url('/admin/signatory')}}">
                  <span>Add Signatory</span>
                </a>
              </li> -->
        </li>

        <li class="nav-item {{ Route::currentRouteName() == 'tool_add' || Route::currentRouteName() == 'tool_index' ? 'active' : '' }} ">
          <a class="nav-link" href="#" data-toggle="collapse" data-target="#tool">
            <i class="material-icons">hardware</i>
            <p>Tools</p>
          </a>
          <div id="tool" class="collapse">
            <ul class='collapsein'>
              <!-- <li class="nav-item">
                <a class="nav-link" href="{{url('/admin/tool_add')}}">
                  {{-- <i class="fa fa-home"></i> --}}
                  <span>Add Tool</span>
                </a>
              </li> -->
              <li class="nav-item">
                <a class="nav-link" href="{{url('/admin/tool_index')}}">
                  {{-- <i class="fa fa-home"></i> --}}
                  <span>Tool List</span>
                </a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="{{url('/admin/tool_issue')}}">
                  {{-- <i class="fa fa-home"></i> --}}
                  <span>Tool Issue</span>
                </a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="{{url('/admin/tool_return')}}">
                  {{-- <i class="fa fa-home"></i> --}}
                  <span>Tool Return</span>
                </a>
              </li>
            </ul>
          </div>
        </li>
        <li class="nav-item {{ Route::currentRouteName() == 'store_po_add_form' || Route::currentRouteName() == 'store_po_index' ? 'active' : '' }} ">
          <a class="nav-link" href="{{url('/admin/store_po_index')}}">
            <i class="material-icons">list_alt</i>
            <p>Purchase Orders</p>
          </a>
          <!-- <li class="nav-item">
                <a class="nav-link" href="{{url('/admin/store_po_add_form')}}">
                  <span>Store PO</span>
                </a>
              </li> -->
        </li>
        <li class="nav-item {{ Route::currentRouteName() == 'supplier' || Route::currentRouteName() == 'supplier_list' ? 'active' : '' }} ">
          <a class="nav-link" href="{{url('/admin/supplier_list')}}">
            <i class="material-icons">verified_user</i>
            <p>Suppliers</p>
          </a>
          <!-- <li class="nav-item">
                <a class="nav-link" href="{{url('/admin/supplier')}}">
                  <span>Add Supplier</span>
                </a>
              </li> -->

        </li>
        <li class="nav-item {{ Route::currentRouteName() == 'stock' || Route::currentRouteName() == 'stock_list' ? 'active' : '' }} ">
          <a class="nav-link" href="{{url('/admin/stock_list')}}">
            <i class="material-icons">shopping_cart</i>
            <p>Stock items</p>
          </a>

          <!-- <li class="nav-item">
                <a class="nav-link" href="{{url('/admin/stock')}}">
                  <span>Add Stock</span>
                </a>
              </li> -->

        </li>
        <li class="nav-item {{ Route::currentRouteName() == 'receipt' || Route::currentRouteName() == 'receipt_list' ? 'active' : '' }} ">
          <a class="nav-link" href="{{url('/admin/receipt_list')}}">
            <i class="material-icons">fact_check</i>
            <p>Stock Receipts</p>
          </a>

          <!-- <li class="nav-item">
                <a class="nav-link" href="{{url('/admin/receipt')}}">
                  <span>Add Receipt</span>
                </a>
              </li> -->

        </li>
        <li class="nav-item  {{ Route::currentRouteName() == 'pump_make_and_model' || Route::currentRouteName() == 'pump_make_and_model_list' ? 'active' : '' }} ">
          <a class="nav-link" href="{{url('/admin/pump_make_and_model_list')}}">
            <i class="material-icons">content_paste</i>
            <p>Pump Make & Models</p>
          </a>

          <!-- <li class="nav-item">
                <a class="nav-link" href="{{url('/admin/pump_make_and_model')}}">
                  <span>Add Pump Make Model</span>
                </a>
              </li> -->

        </li>
        {{-- templates --}}
        <li class="nav-item {{ Route::current()->action['prefix'] == 'admin/documents' ? 'active' : '' }}">
            <a class="nav-link" href="#" data-toggle="collapse" data-target="#documents">
                <i class="material-icons">task</i>
                <p>Documents </p>
            </a>
            <div id="documents" class="collapse {{ Route::current()->action['prefix'] == 'admin/documents' ? 'show' : '' }}">
                <ul class='collapsein'>
                    <li class="nav-item {{ Route::currentRouteName() == 'doc.template' ? 'active' : '' }}">
                        <a class="nav-link" href="{{ route('doc.template') }}">
                            <span>Templates</span>
                        </a>
                    </li>
                    <li class="nav-item {{ Route::currentRouteName() == 'doc.site_procedure' ? 'active' : '' }}">
                        <a class="nav-link" href="{{ route('doc.site_procedure') }}">
                            <span>Site Procedures</span>
                        </a>
                    </li>
                    <li class="nav-item {{ Route::currentRouteName() == 'doc.quality' ? 'active' : '' }}">
                        <a class="nav-link" href="{{ route('doc.quality') }}">
                            <span>Quality</span>
                        </a>
                    </li>
                </ul>
            </div>
        </li>
        {{-- site procedure --}}
        {{-- <li class="nav-item {{ Route::currentRouteName() == 'get.site_procedures' ? 'active' : '' }} ">
          <a class="nav-link" href="{{route('get.site_procedures')}}">
            <i class="material-icons">construction</i>
            <p>Site Procedures</p>
          </a>


        </li> --}}

        {{-- //templates --}}
        {{-- system_settings --}}
        <li class="nav-item {{ Route::currentRouteName() == 'system_setting.settings' ? 'active' : '' }} ">
          <a class="nav-link" href="{{route('system_setting.settings')}}">
            <i class="material-icons">settings</i>
            <p>System Settings</p>
          </a>
        </li>

        {{-- //system_settings --}}

        <li class="nav-item {{ Route::currentRouteName() == 'staff' || Route::currentRouteName() == 'staff_list'? 'active' : '' }} ">
          <a class="nav-link" href="{{url('/admin/staff_list')}}">
            <i class="material-icons">groups</i>
            <p>Staff</p>
          </a>

          <!-- <li class="nav-item">
                <a class="nav-link" href="{{url('/admin/staff')}}">
                  <span>Add Staff</span>
                </a>
              </li> -->
        </li>
        @endif
        <li class="nav-item {{ Route::currentRouteName() == 'user_Profile' ? 'active' : '' }} ">
          <a class="nav-link" href="{{url('/admin/user_profile')}}">
            <i class="material-icons">person</i>
            <p>User Profile</p>
          </a>
        </li>
      </ul>
      <div class="logo">
          <a href="#" class="simple-text logo-normal">
              <img src="{{ asset('admin_theme/assets/img/petro2.png') }}" width="48%" class="img-fluid">
              <img src="{{ asset('admin_theme/assets/img/petro3.png') }}" width="48%" class="img-fluid">
          </a>
      </div>
  </div>
</div>
