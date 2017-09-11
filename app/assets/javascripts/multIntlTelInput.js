$(function () {
    apply_intlTel();

    var index = 2;
    var deleted_indexes = [];
    var tot_phones = 1;
    $(document.body).on('click', '.btn-remove-phone2', function () {
        $(this).closest('.phone-input').remove();
        deleted_indexes.push(2);
        tot_phones -= 1;
    });
    $(document.body).on('click', '.btn-remove-phone3', function () {
        $(this).closest('.phone-input').remove();
        deleted_indexes.push(3);

        tot_phones -= 1;
    });
    $(document.body).on('click', '.btn-remove-phone4', function () {
        $(this).closest('.phone-input').remove();
        deleted_indexes.push(4);
        tot_phones -= 1;
    });
    $(document.body).on('click', '.btn-remove-phone5', function () {
        $(this).closest('.phone-input').remove();
        deleted_indexes.push(5);

        tot_phones -= 1;
    });

    $('.btn-add-phone').click(function () {
        if ((deleted_indexes.length > 0)) {
            index = min = Math.min.apply(null, deleted_indexes);
            console.log("min: " + min.toString());
            var del_ind = deleted_indexes.indexOf(index);
            if (index > -1) {
                deleted_indexes.splice(del_ind, 1);
            }
        }
        if (tot_phones < 5) {
            console.log("index: " + index.toString());
            $('.phone-list').append('' +
                '<div class="row phone-input"> ' +
                '<div class="col-xs-7"> ' +
                '<input type="text" id="address_phone_numbers' + index + '" name="address[phone_numbers][' + index + ']" class=" transparent-input form-control"" />' +
                '</div>' +
                '<div class="col-xs-3"> ' +
                '<span id="valid-msg' + index + '" class="hide" style="color: #EFEFEF">✓ Valid</span>' +
                '<span id="error-msg' + index + '" class="hide" style="color: red">Invalid number</span>' +
                '</div>' +
                '<div class="col-xs-2"> ' +
                '<span >' +
                '<button class="btn btn-danger btn-remove-phone' + index + '" type="button" onclick=""><span class="glyphicon glyphicon-remove"></span></button>' +
                '</span>' +
                '</div>' +
                '</div>' +
                '</div>'
            );

            if ((deleted_indexes.length == 0)) {
                index += 1;
            }

            tot_phones += 1;
        } else {
        }
        apply_intlTel();
    });
});