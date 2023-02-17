<script type="text/javascript">
	function mapDataToFields(data)
    {
        $.map(data, function(value, index){
            var input = $('#update-form-modal [name="'+index+'"]');
            if(!$(input).length)
            {
                input = $('#update-form-modal [name="'+index+'[]"]');
            }
            if($(input).length)
            {
            	if($('input').attr('type') == 'checkbox' && value == $(input).val())
            		$(input).prop('checked', true);
                else
                {
                    if(typeof $(input).attr('multiple') !== 'undefined')
                        value = value.split(',');
                        
                    $(input).val(value).change();
                }
            }
        });
    }
    var data = <?php echo json_encode($item) ?>;
    mapDataToFields(data);
</script>