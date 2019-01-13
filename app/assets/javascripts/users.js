$(function(){
    $('#new_user').validate({
        rules: {
            'user[name]': 'required',
            'user[lastname]': 'required',
            'user[username]': 'required',
            'user[career]': 'required',
            'user[password]': {
                required: true,
                minlength: 6
            },
            'user[password_confirmation]': {
                required: true,
                minlength: 6,
                equalTo: "#user_password"
            }
        },
        messages: {
            'user[name]': 'El nombre no puede estar vacío',
            'user[lastname]': 'Los apellidos no pueden estar vacío',
            'user[username]': 'El nombre de usuario no puede estar vacío',
            'user[career]': 'Debe elegir una carrera',
            'user[password]': {
                required: 'Ingrese su contraseña',
                minlength: 'La contraseña debe tener al menos 6 caracteres'
            },
            'user[password_confirmation]': {
                required: 'Repita su contraseña',
                minlength: 'La contraseña debe tener al menos 6 caracteres',
                equalTo: 'La contraseña debe coincidir con la anterior'
            }
        },
        errorElement: 'div',
        errorPlacement: function(error, element){
            error.insertAfter(element);
        }
    })

    $('.edit_user').validate({
        rules: {
            'user[name]': 'required',
            'user[lastname]': 'required',
            'user[username]': 'required',
            'user[career]': 'required',
            'user[email]': 'required'
        },
        messages: {
            'user[name]': 'El nombre no puede estar vacío',
            'user[lastname]': 'Los apellidos no pueden estar vacío',
            'user[username]': 'El nombre de usuario no puede estar vacío',
            'user[career]': 'Debe elegir una carrera',
            'user[email]': 'El correo no puede estar vacío'
        },
        errorElement: 'div',
        errorPlacement: function(error, element){
            error.insertAfter(element);
        }
    })
})