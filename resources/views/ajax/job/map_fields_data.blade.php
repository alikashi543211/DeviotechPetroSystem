<script type="text/javascript">
	function mapDataToFields(data)
    {
        $.map(data, function(value, index){
            var input = $('#update-form-modal [name="'+index+'"]');
            if($(input).length)
            {
            	if($('input').attr('type') == 'checkbox' && value == $(input).val())
            		$(input).prop('checked', true);
            	else
                	$(input).val(value).change();
            }
        });
    }
    var data = <?php echo json_encode($item) ?>;
    mapDataToFields(data);
</script>