$(function() {
    $('#event_form').validate({
        rules: {
            'event[name]': 'required' 
        },
        messages: { 
            'event[name]': 'El nombre no puede estar vacío'
        },
        errorElement : 'div',
        errorPlacement: function(error, element) {
            error.insertAfter(element);
        }
    });
});