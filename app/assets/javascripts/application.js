// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require rails-ujs
//= require materialize
//= require activestorage
//= require toastr
//= require trix
//= require_tree .

$(function() {
    $("#add_answer").hide();
    $("#answer").change(function() {
        $(this).find("option:selected").each(function(){
            var optVal = $(this).attr("value");
            if(optVal=='Escala')
                $("#add_answer").show();
            else
                $("#add_answer").hide();
        })
    });

    $('#role_degree').change(function(){
        var optionSelected = $(this).find("option:selected");
        var textSelected = optionSelected.text();
        if(textSelected=="admin" || textSelected=="docente" || textSelected=="director")
            document.getElementById("show_degree").style.display="block";
        else
            document.getElementById("show_degree").style.display="none";
    })

    $('.dropdown-trigger').dropdown({
        coverTrigger: false,
        constrainWidth: false,
        alignment: 'right'
    });

    
    $('select').formSelect();

    $('.fixed-action-btn').floatingActionButton();

    $('.tooltipped').tooltip();

    $('.datepicker').datepicker({
        minDate: new Date(),
        format: 'yyyy-mm-dd',
        i18n: {
            cancel: 'Cancelar',
            done: 'Aceptar',
            months: ['Enero','Febrero','Marzo','Abril','Mayo','Junio','Julio','Agosto','Septiembre','Octubre','Noviembre','Diciembre'],
            monthsShort: ['Ene','Feb','Mar','Abr','May','Jun','Jul','Ago','Sep','Oct','Nov','Dic'],
            weekdaysShort: ['Dom','Lun','Mar','Mie','Jue','Vie','Sab'],
            weekdaysAbbrev: ['D','L','M','M','J','V','S']
        }
    });

    $('.timepicker').timepicker({
        i18n: {
            cancel: 'Cancelar',
            done: 'Aceptar'
        }
    });

    $('.materialize-textarea').trigger('autoresize');

    $('#new_review').validate(
        {
            rules: {
                'review[relevance]': "required",
                'review[problem_def]': "required",
                'review[general_def]': "required",
                'review[specific_def]': "required",
                'review[confidence]': "required",
                'review[general_evaluation]': "required",
                'review[general_evaluation_text]': "required"
            },
            messages: {
                'review[relevance]': { required: "Debe elegir una opción <br/>" },
                'review[problem_def]': { required: "Debe elegir una opción <br/>" },
                'review[general_def]': { required: "Debe elegir una opción <br/>" },
                'review[specific_def]': { required: "Debe elegir una opción <br/>" },
                'review[confidence]': { required: "Debe elegir una opción <br/>" },
                'review[general_evaluation]': { required: "Debe elegir una opción <br/>" },
                'review[general_evaluation_text]': { required: "Campo obligatorio <br/>" }
            },
            errorPlacement: function(error, element) {
                if (element.attr("type") == "radio") {
                    error.prependTo(element.parent());
                }else{
                    error.insertBefore(element.parent());
                }
            }
        });

    $('#new_paper').validate({
        rules: {
            'paper[title]': 'required',
            'paper[google_docs_link]': 'required',
            'paper[resume]': 'required',
            'paper[problem_definition]': 'required',
            'paper[general_purpose]': 'required',
            'paper[specific_purpose]': 'required'
        },
        messages: {
            'paper[title]': { required: 'Campo obligatorio'},
            'paper[google_docs_link]': { required: 'Campo obligatorio'},
            'paper[resume]': { required: 'Campo obligatorio'},
            'paper[problem_definition]': {required: 'Campo obligatorio'},
            'paper[general_purpose]': {required:'Campo obligatorio'},
            'paper[specific_purpose]': {required:'Campo obligatorio'}
        },
        errorElement : 'div',
        errorPlacement: function(error, element) {
            error.insertAfter(element);
        }
    });

    $('.edit_paper').validate({
        rules: {
            'paper[title]': 'required',
            'paper[google_docs_link]': 'required',
            'paper[resume]': 'required',
            'paper[problem_definition]': 'required',
            'paper[general_purpose]': 'required',
            'paper[specific_purpose]': 'required'
        },
        messages: {
            'paper[title]': { required: 'Campo obligatorio'},
            'paper[google_docs_link]': { required: 'Campo obligatorio'},
            'paper[resume]': { required: 'Campo obligatorio'},
            'paper[problem_definition]': {required: 'Campo obligatorio'},
            'paper[general_purpose]': {required:'Campo obligatorio'},
            'paper[specific_purpose]': {required:'Campo obligatorio'}
        },
        errorElement : 'div',
        errorPlacement: function(error, element) {
            error.insertAfter(element);
        }
    });

    $('.new_comment').validate({
        rules: { 'comment[commentary]': 'required' },
        messages: { 'comment[commentary]': { required: 'El comentario no puede estar vacío'} },
        errorElement : 'div',
        errorPlacement: function(error, element) {
            error.insertAfter(element);
        }
    });
})