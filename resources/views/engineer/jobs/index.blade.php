@extends('layouts.engineer')
@section('title', 'Jobs')
@section('page-title', 'Jobs')
@section('css')
    <style>
        @media(max-width: 768px)
        {
            .address_column
            {
                font-size: 80%;
                font-weight: 400;
            }
        }
    </style>
@endsection
@section('content')
@include('engineer.includes.success_message')
    <div class="row">
        <div class="col-12">
            <div class="card">
                <div class="card-header card-header-primary">
                    <h4 class="card-title font-weight-bold">
                        JOBS
                    </h4>
                </div>
                <div class="card-body">
                    <div class="table-responsive">
                        <table class="table table-bordered table-stripped">
                            <thead>
                                <th>ID</th>
                                <th>Name</th>
                                <th>Site Address</th>
                                <th>Contact</th>
                                <th>Detail</th>
                                <th>Action</th>
                            </thead>
                            <tbody>
                                @foreach ($engineer_jobs as $item)
                                    <tr>
                                        <td class="address_column">{{ $item->id }}</td>
                                        <td class="address_column">{{ $item->job->name }}</td>
                                        <td class="address_column">{{ $item->job->customer->address1.' '.$item->job->customer->address2.' '.$item->job->customer->address3.' '.$item->job->customer->address4 }}</td>
                                        <td class="address_column">{{ $item->job->contact }}</td>
                                        <td class="address_column">{{ $item->job->detail }}</td>
                                        <td class="address_column">
                                            <a href="{{ route('engineer.form.form',['id'=>$item->id]) }}" class="btn btn-info">Open</a>
                                        </td>
                                    </tr>
                                @endforeach
                          </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection
