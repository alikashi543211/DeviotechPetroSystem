@extends('Admin.layouts.dashboard')
@section('page-title', 'Quality')
@section('content')
<div class="row">
    <div class="col-md-12">
        <div class="card">
            <div class="card-header card-header-primary">
                <h4 class="card-title">Upload Quality</h4>
            </div>
            <div class="card-body">
                <form action="{{ route('doc.quality.upload') }}" method="post" enctype="multipart/form-data">
                    @csrf
                    <div class="row">
                        <div class="col-md-12">
                            <div class="form-group">
                                <label>Upload Document</label>
                                <input type="file" name="file" class="form-control" required>
                            </div>
                        </div>
                    </div>
                    <button type="submit" class="btn btn-primary pull-left">Save</button>
                    <a href="/admin/dashboard" class="btn btn-danger" >Close</a>
                    <div class="clearfix"></div>
                </form>
            </div>
        </div>
    </div>
</div>
<div class="row">
    <div class="col-md-12">
        <div class="card">
            <div class="card-header card-header-danger">
                <h4 class="card-title">Quality</h4>
            </div>
            <div class="card-body">
                <div class="table-responsive">
                    <table class="table table-bordered">
                        <thead>
                            <tr>
                                <th>#</th>
                                <th>Document</th>
                                <th>Action</th>
                            </tr>
                        </thead>
                        <tbody>
                            @if(isset($quality['entries']))
                                @foreach ($quality['entries'] as $item)
                                <tr>
                                    <td>{{ $loop->iteration }}</td>
                                    <td><a target="_blank" href="https://www.dropbox.com/home{{ $item['path_lower'] }}">{{ "https://www.dropbox.com/home".$item['path_lower'] }}</a></td>
                                    <td>
                                        <a href="{{ route('doc.delete') }}?path={{ $item['path_lower'] }}" class="del-btn"><button type="submit" class="btn btn-primary btn-sm"><i class="material-icons">delete</i></button></a>
                                    </td>
                                </tr>
                                @endforeach
                            @endif
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
</div>
@stop
