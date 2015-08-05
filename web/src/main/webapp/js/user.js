$(function(){
    $('#updateUserForm').hide();


    $(".deleteUser").on("click", function (){

        var id = $(this).data('id');

        $.ajax({
            url: '/web/users/deletion/' + id,
            type: 'DELETE',
            success: function() {
                $(location).attr('href','./users');
            }
        });
    });

    $('.updateUser').on('click', function () {
        var $this = $(this);

        var id = $this.data('id');
        $('#updateUserForm').show();

        $.get('/web/users/' + id)
            .success(function(data) {

                var user = JSON.parse(data);
                console.log(user);
                $('#id').val(user.id);
                $('#name').val(user.name);
                $('#password').val(user.password);
            })

    });

        $('#updateUser').on('click', function (e) {
            e.preventDefault();

            var id = $('#id').val();
            var name = $('#name').val();
            var password = $('#password').val();
            $.ajax({
                url: '/web/users/' + id,
                type: 'PUT',
                data: {
                    id: id,
                    name: name,
                    password: password
                },
                dataType: 'json',
                success: function (data) {

                    $('#updateUserForm').hide();

                    console.log(data);
                    window.location.href = '/web/users';
                }
            });
    });
});