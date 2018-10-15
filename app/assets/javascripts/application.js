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

    $('.dropdown-trigger').dropdown({
        coverTrigger: false,
        constrainWidth: false,
        alignment: 'right'
    });

    
    $('select').formSelect();

    $('.datepicker').datepicker();
    $('.materialize-textarea').trigger('autoresize');
})