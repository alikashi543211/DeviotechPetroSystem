<div class="modal fade" id="update-form-modal" tabindex="-1" role="dialog" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header bg-primary">
        <h5 class="modal-title text-white bold">Update Staff Job Email</h5>
        <button type="button" class="close text-white" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        <form method="post" action="{{ route('job.save.email', $item->id) }}">
          @csrf
          <input type="hidden" name="job_id" value="">
          <input type="hidden" id="send_mail_type" name="send_mail_type" value="1">
          <div class="form-group">
            <label>Receiver</label>
            <select class="form-control" name="receiver" id="ex-multiselect" >
            @foreach($contact->sortBy('forename') as $cont)
              @if(empty($cont->email))
                @continue
              @endif
              <option value="{{$cont->email}}">{{ucfirst($cont->forename)}} - {{$cont->email}}</option>
            @endforeach
            </select>

          </div>
          <div class="form-group">
            <label>CC <small>(seaparated by comma)</small></label>
            <select class="form-control" name="cc[]" id="ex-multiselect" multiple>
              @foreach($contact as $ccc)
              <option value="{{$ccc}}">{{$ccc}}</option>
              @endforeach
            </select>
          </div>
          <div class="form-group">
            <label>Other Email Address(Receiever)</label>
            <input type="email" class="form-control" name="other_email_address" value="{{ $item->other_email_address ?? '' }}">
          </div>
          <div class="form-group">
            <label>Subject</label>
            <input type="text" class="form-control" name="subject">
          </div>
          <div class="form-group">
            <label>Content</label>
            <textarea class="form-control" name="content" rows="4"></textarea>
          </div>
          <button class="btn btn-primary update_mail" type="submit">Save</button>
          <button class="btn btn-danger" type="button" data-dismiss="modal">Cancel</button>
        </form>
      </div>
    </div>
  </div>
</div>
@include('ajax.includes.map_fields_data', ['item' => $item->toArray()])