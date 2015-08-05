$(function(){
   var userName;
   $('.chooseUser').on('click', function(){
       userName = $(this).data('name');
       $('#dropdownMenu').text(userName);
   });


    var form = $('#new_employee');
    form.submit(function(nw){
        $.ajax({
            url: '/web/employees/creation',
            type: 'POST',
            data: form.serialize(),
            success: function(data){
                $(location).attr('href', '/web/employees');
            }
        });
        nw.preventDefault();

    });


    var role = $('#role').data('value');
    if(role == 'OPs'){
        $('#OPs').attr("checked", true);
    }else{
        if(role == "Coach"){
            $('#coach').attr('checked', true);
        }else{
            $('#HR').attr('checked', true);
        }
    }


    var gender = $('#gender').data('value');
    if(gender == "男"){
        $('#male').attr("checked", true);
    }else{
        $('#female').attr("checked", true);
    }
});