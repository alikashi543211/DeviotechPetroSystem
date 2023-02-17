<form action="{{route('communication.save')}}" method="post">
    @csrf
    <div class="row">
        
        <div class="col-md-12">
            <div class="form-group">
                <label>Communication/Action Taken</label>
                <textarea name="action_taken" class="form-control" rows="5"></textarea>
                @if($errors->has('action_taken'))
                {{ $errors->first('action_taken') }}
                @endif
            </div>
        </div>
    </div>
    <button type="submit" class="btn btn-primary pull-left">Save</button>
    <button type="button" data-dismiss="modal" class="btn btn-danger">Close</button>
</form>