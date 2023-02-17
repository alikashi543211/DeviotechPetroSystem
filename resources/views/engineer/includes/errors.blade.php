                                             @foreach($errors->all() as $error)
                                                <div class="alert alert-danger">
                                                    {{$error}}
                                                    <button type="button" class="close" data-hide="alert" aria-label="Close">
                                                        <span aria-hidden="true">&times;</span>
                                                    </button>
                                                </div>
                                            @endforeach