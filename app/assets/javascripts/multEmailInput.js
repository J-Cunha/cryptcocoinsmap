$(function () {
    var email_index = 2;
    var deleted_email_indexes = [];
    var tot_emails = 1;

    $(document.body).on('click', '.btn-remove-email2', function () {
        $(this).closest('.email-input').remove();
        deleted_email_indexes.push(2);
        tot_emails -= 1;
    });
    $(document.body).on('click', '.btn-remove-email3', function () {
        $(this).closest('.email-input').remove();
        deleted_email_indexes.push(3);
        tot_emails -= 1;
    });
    $(document.body).on('click', '.btn-remove-email4', function () {
        $(this).closest('.email-input').remove();
        deleted_email_indexes.push(4);
        tot_emails -= 1;
    });
    $(document.body).on('click', '.btn-remove-email5', function () {
        $(this).closest('.email-input').remove();
        deleted_email_indexes.push(5);
        tot_emails -= 1;
    });

    $('.btn-add-email').click(function () {
        if ((deleted_email_indexes.length > 0)) {
            email_index = min = Math.min.apply(null, deleted_email_indexes);
            console.log("min: " + min.toString());
            var del_ind = deleted_email_indexes.indexOf(email_index);
            if (email_index > -1) {
                deleted_email_indexes.splice(del_ind, 1);
            }
        }
        if(tot_emails < 5 ){
            $('.email-list').append('' +
                '<div class="input-group email-input">' +
                '<input type="text" name="address[emails][' + email_index + ']" class="form-control transparent-input" />' +
                '<span class="input-group-btn">' +
                '<button class="btn btn-danger btn-remove-email'+email_index+'" type="button"><span class="glyphicon glyphicon-remove"></span></button>' +
                '</span>' +
                '</div>'
            );
            if ((deleted_email_indexes.length == 0)) {
                email_index += 1;
            }
            tot_emails += 1;
        }
    });
});