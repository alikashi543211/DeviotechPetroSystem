@extends('Admin.layouts.dashboard')
@section('page-title', 'Dashboard')
@section('content')

<div class="row">
  <div class="col-lg-3 col-md-6 col-sm-6">
    <div class="card card-stats">
      <div class="card-header card-header-warning card-header-icon">
        <div class="card-icon">
          <i class="material-icons">person</i>
        </div>
        <p class="card-category">Customer</p>
        <h3 class="card-title">{{$customer_count}}
        </h3>
      </div>
      <div class="card-footer">
        <div class="stats">
        </div>
      </div>
    </div>
  </div>
  <div class="col-lg-3 col-md-6 col-sm-6">
    <div class="card card-stats">
      <div class="card-header card-header-success card-header-icon">
        <div class="card-icon">
          <i class="material-icons">verified_user</i>
        </div>
        <p class="card-category">Supplier</p>
        <h3 class="card-title">{{$supplier_count}}</h3>
      </div>
      <div class="card-footer">
        <div class="stats">
        </div>
      </div>
    </div>
  </div>
  <div class="col-lg-3 col-md-6 col-sm-6">
    <div class="card card-stats">
      <div class="card-header card-header-danger card-header-icon">
        <div class="card-icon">
          <i class="material-icons">store</i>
        </div>
        <p class="card-category">Stock Item</p>
        <h3 class="card-title">{{$stock_count}}</h3>
      </div>
      <div class="card-footer">
        <div class="stats">
        </div>
      </div>
    </div>
  </div>
  <div class="col-lg-3 col-md-6 col-sm-6">
    <div class="card card-stats">
      <div class="card-header card-header-info card-header-icon">
        <div class="card-icon">
          <i class="material-icons">shopping_cart</i>
        </div>
        <p class="card-category">Purchase Order</p>
        <h3 class="card-title">{{$store_po_count}}</h3>
      </div>
      <div class="card-footer">
        <div class="stats">
        </div>
      </div>
    </div>
  </div>
</div>

<div class="row">
  <div class="col-lg-6 col-md-12">
    <div class="card">
      <div class="card-header card-header-success">
        <h4 class="card-title">Customer Stats</h4>
      </div>
      <div class="card-body table-responsive">
        <table class="table table-hover">
          <thead class="text-warning">
            <th>ID</th>
            <th>Name</th>
            <th>Email</th>
            <th>Address</th>
          </thead>
          <tbody>
            @foreach($customer as $cust)
            <tr>
              <td>{{$cust->id}}</td>
              <td>{{$cust->name}}</td>
              <td>{{$cust->email}}</td>
              <td>{{$cust->address1}}</td>
            </tr>
            @endforeach
          </tbody>
        </table>
      </div>
    </div>
  </div>
  <div class="col-lg-6 col-md-12">
    <div class="card">
      <div class="card-header card-header-warning">
        <h4 class="card-title">Stock Items</h4>
      </div>
      <div class="card-body table-responsive">
        <table class="table table-hover">
          <thead class="text-warning">
            <th>ID</th>
            <th>Name</th>
            <th>Cost</th>
            <th>Quantity</th>
          </thead>
          <tbody>
            @foreach($stock as $stocks)
            <tr>
              <td>{{$stocks->id}}</td>
              <td>{{$stocks->name}}</td>
              <td>{{$stocks->unit_cost}}</td>
              <td>{{$stocks->unit_of_measure}}</td>
            </tr>
            @endforeach
          </tbody>
        </table>
      </div>
    </div>
  </div>
</div>
</div>
</div>
</div>
</div>
<div class="fixed-plugin">
  <div class="dropdown show-dropdown">
    <a href="#" data-toggle="dropdown">
      {{-- <i class="fa fa-cog fa-2x"> </i> --}}
    </a>
    <ul class="dropdown-menu">
      <li class="header-title"> Sidebar Filters</li>
      <li class="adjustments-line">
        <a href="javascript:void(0)" class="switch-trigger active-color">
          <div class="badge-colors ml-auto mr-auto">
            <span class="badge filter badge-purple" data-color="purple"></span>
            <span class="badge filter badge-azure" data-color="azure"></span>
            <span class="badge filter badge-green" data-color="green"></span>
            <span class="badge filter badge-warning" data-color="orange"></span>
            <span class="badge filter badge-danger" data-color="danger"></span>
            <span class="badge filter badge-rose active" data-color="rose"></span>
          </div>
          <div class="clearfix"></div>
        </a>
      </li>
      <li class="header-title">Images</li>
      <li class="active">
        <a class="img-holder switch-trigger" href="javascript:void(0)">
          <img src="{{asset('admin_theme')}}/assets/img/sidebar-1.jpg" alt="">
        </a>
      </li>
      <li>
        <a class="img-holder switch-trigger" href="javascript:void(0)">
          <img src="{{asset('admin_theme')}}/assets/img/sidebar-2.jpg" alt="">
        </a>
      </li>
      <li>
        <a class="img-holder switch-trigger" href="javascript:void(0)">
          <img src="{{asset('admin_theme')}}/assets/img/sidebar-3.jpg" alt="">
        </a>
      </li>
      <li>
        <a class="img-holder switch-trigger" href="javascript:void(0)">
          <img src="{{asset('admin_theme')}}/assets/img/sidebar-4.jpg" alt="">
        </a>
      </li>
      <li class="button-container">
        <a href="https://www.creative-tim.com/product/material-dashboard" target="_blank" class="btn btn-primary btn-block">Free Download</a>
      </li>
      
      <li class="button-container">
        <a href="https://demos.creative-tim.com/material-dashboard/docs/2.1/getting-started/introduction.html" target="_blank" class="btn btn-default btn-block">
          View Documentation
        </a>
      </li>
      <li class="button-container github-star">
        <a class="github-button" href="https://github.com/creativetimofficial/material-dashboard" data-icon="octicon-star" data-size="large" data-show-count="true" aria-label="Star ntkme/github-buttons on GitHub">Star</a>
      </li>
      <li class="header-title">Thank you for 95 shares!</li>
      <li class="button-container text-center">
        <button id="twitter" class="btn btn-round btn-twitter"><i class="fa fa-twitter"></i> &middot; 45</button>
        <button id="facebook" class="btn btn-round btn-facebook"><i class="fa fa-facebook-f"></i> &middot; 50</button>
        <br>
        <br>
      </li>
    </ul>
    @stop