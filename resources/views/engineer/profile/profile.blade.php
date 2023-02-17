@extends('layouts.engineer')
@section('title', 'Profile')
@section('page-title', 'Profile')
@section('content')
@include('engineer.includes.success_message')

<div class="content">
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-12">
                <div class="card">
                    <div class="card-header card-header-tabs card-header-primary">
                        <div class="nav-tabs-navigation">
                            <div class="nav-tabs-wrapper">
                                <ul class="nav nav-tabs" data-tabs="tabs">
                                    <li class="nav-item">
                                        <a class="nav-link active" href="#profile" data-toggle="tab">
                                            <i class="material-icons">bug_report</i> Profile
                                            <div class="ripple-container"></div>
                                        </a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link" href="#messages" data-toggle="tab">
                                            <i class="material-icons">code</i> Change Password
                                            <div class="ripple-container"></div>
                                        </a>
                                    </li>
                                    {{-- <li class="nav-item">
                                        <a class="nav-link" href="#reset" data-toggle="tab">
                                            <i class="material-icons">code</i> Reset Password
                                            <div class="ripple-container"></div>
                                        </a>
                                    </li> --}}
                                </ul>
                            </div>
                        </div>
                    </div>
                    <div class="card-body">
                        <div class="tab-content">
                            <div class="tab-pane active" id="profile">
                                <form action="{{route('update_profile')}}" method="post">
                                    @csrf
                                    <div class="row">
                                        <div class="col-md-12">
                                            <div class="form-group">
                                                <label class="bmd-label-floating">Name</label>
                                                <input type="text" value="{{ auth()->user()->name }}" class="form-control" name="name">
                                                @error('name')
                                                <div class="alert alert-danger">{{ $message }}</div>
                                                @enderror
                                            </div>
                                        </div>
                                        <div class="col-md-12">
                                            <div class="form-group">
                                                <label class="bmd-label-floating">Email</label>
                                                <input type="email" value="{{ auth()->user()->email }}" class="form-control" name="email">
                                                @error('email')
                                                <div class="alert alert-danger">{{ $message }}</div>
                                                @enderror
                                            </div>
                                        </div>
                                    </div>
                                    <button type="submit" class="btn btn-primary pull-left">Save</button>
                                </form>
                            </div>
                            <div class="tab-pane" id="messages">
                                @if(session('reset_pin'))
                                    <div class="clearfix">
                                        <form action="{{route('engineer.profile.reset_password')}}" method="post">
                                            @csrf
                                            <div class="row">
                                                <div class="col-md-12">
                                                    <div class="form-group">
                                                        <label class="bmd-label-floating">Old Password</label>
                                                        <input type="text" class="form-control" name="pin_code" value="{{old('pin_code')}}">
                                                        @error('pin_code')
                                                            <div class="alert alert-danger">{{ $message }}</div>
                                                        @enderror
                                                    </div>
                                                </div>
                                                <div class="col-md-12">
                                                    <div class="form-group">
                                                        <label class="bmd-label-floating">New Password</label>
                                                        <input type="text" class="form-control" name="new_password">
                                                        @error('new_password')
                                                            <div class="alert alert-danger">{{ $message }}</div>
                                                        @enderror
                                                    </div>
                                                </div>
                                                <div class="col-md-12">
                                                    <div class="form-group">
                                                        <label class="bmd-label-floating">Confirm New Password</label>
                                                        <input type="text" class="form-control" name="confirmed_password">
                                                        @error('confirmed_password')
                                                            <div class="alert alert-danger">{{ $message }}</div>
                                                        @enderror
                                                    </div>
                                                </div>
                                            </div>
                                            <button type="submit" class="btn btn-primary pull-left">Save</button>
                                        </form>
                                    </div>
                                @else
                                    <div class="clearfix">
                                        <form action="{{route('reset_password')}}" method="post">
                                            @csrf
                                            <div class="row">
                                                <div class="col-md-12">
                                                    <div class="form-group">
                                                        <label class="bmd-label-floating">Old Password</label>
                                                        <input type="text" class="form-control" name="oldpassword">
                                                        @error('oldpassword')
                                                        <div class="alert alert-danger">{{ $message }}</div>
                                                        @enderror
                                                    </div>
                                                </div>
                                                <div class="col-md-12">
                                                    <div class="form-group">
                                                        <label class="bmd-label-floating">New Password</label>
                                                        <input type="text" class="form-control" name="newpassword">
                                                        @error('newpassword')
                                                        <div class="alert alert-danger">{{ $message }}</div>
                                                        @enderror
                                                    </div>
                                                </div>
                                                <div class="col-md-12">
                                                    <div class="form-group">
                                                        <label class="bmd-label-floating">Confirm New Password</label>
                                                        <input type="text" class="form-control" name="confirm_password">
                                                        @error('confirm_password')
                                                        <div class="alert alert-danger">{{ $message }}</div>
                                                        @enderror
                                                    </div>
                                                </div>
                                            </div>
                                            <button type="submit" class="btn btn-primary pull-left">Save</button>
                                        </form>
                                    </div>
                                @endif
                            </div>
                            <div class="tab-pane" id="reset">
                                <div class="clearfix">
                                    <form action="{{route('reset_password')}}" method="POST">
                                        @csrf
                                        <div class="row">
                                            <div class="col-md-12">
                                                <div class="form-group">
                                                    <label class="bmd-label-floating">Email</label>
                                                    <input type="email" value="{{ auth()->user()->email }}" class="form-control" name="email" readonly>
                                                    @error('email')
                                                    <div class="alert alert-danger">{{ $message }}</div>
                                                    @enderror
                                                </div>
                                            </div>
                                        </div>
                                        <button type="button" class="btn btn-info pull-left submit_pin_btn">Get Pin Code</button>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection

@section('js')
    <script>
        $(document).on("click",".submit_pin_btn",function()
        {
            resetEmail();
        });

        function resetEmail()
        {
            $.ajax({
                type: "GET",
                url: "{{ route('engineer.ajax.profile.reset_email') }}",
                success: function (response) {
                    setTimeout(function(){
                        window.location.reload(true);
                    },500);
                }
            });
        }
    </script>
@endsection