@extends('layouts.engineer')
@section('title', 'Dashboard')
@section('page-title', 'Dashboard')
@section('content')
@include('engineer.includes.success_message')
<div class="row">
  <div class="col-lg-3 col-md-6 col-sm-6">
    <div class="card card-stats">
      <div class="card-header card-header-primary card-header-icon">
        <div class="card-icon">
          <i class="material-icons">list</i>
        </div>
        <p class="card-category">Jobs</p>
        <h3 class="card-title">{{ $not_submitted_count ?? 0 }}</h3>
      </div>
      <div class="card-footer">
        <div class="stats">
          <i class="material-icons">list</i> Total # of jobs
        </div>
      </div>
    </div>
  </div>
  {{-- <div class="col-lg-3 col-md-6 col-sm-6">
    <div class="card card-stats">
      <div class="card-header card-header-success card-header-icon">
        <div class="card-icon">
          <i class="material-icons">how_to_reg</i>
        </div>
        <p class="card-category">Submitted Jobs</p>
        <h3 class="card-title">{{ $submitted_count ?? 0 }}</h3>
      </div>
      <div class="card-footer">
        <div class="stats">
          <i class="material-icons">people</i> Total # of submitted jobs
        </div>
      </div>
    </div>
  </div>
  <div class="col-lg-3 col-md-6 col-sm-6">
    <div class="card card-stats">
      <div class="card-header card-header-danger card-header-icon">
        <div class="card-icon">
          <i class="material-icons">tour</i>
        </div>
        <p class="card-category">Pending Jobs</p>
        <h3 class="card-title">{{ $not_submitted_jobs ?? 0 }}</h3>
      </div>
      <div class="card-footer">
        <div class="stats">
          <i class="material-icons">local_offer</i> Total # of visitors
        </div>
      </div>
    </div>
  </div>
  <div class="col-lg-3 col-md-6 col-sm-6">
    <div class="card card-stats">
      <div class="card-header card-header-info card-header-icon">
        <div class="card-icon">
        <i class="material-icons">cached</i>
        </div>
        <p class="card-category">Active Groups</p>
        <h3 class="card-title">777</h3>
      </div>
      <div class="card-footer">
        <div class="stats">
          <i class="material-icons">update</i> Active groups
        </div>
      </div>
    </div>
  </div> --}}
</div>

@endsection