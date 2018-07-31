$(function () {


    $("body").on("click", ".accepted_reserve", function () {

        var row_id = $(this).data('itemid');
        var url = base_url2+'/'+'admin/reserve'+'/'+row_id;
        var reserve ={} ;
        reserve.reserve_id= row_id;
        reserve._token= _token;
        reserve.is_accepted= 0;
        if ($(this).is(":checked"))
        {
            reserve.is_accepted = 1;
        }
        $.ajax
        ({
            url: url,
            type: 'POST',
            data: reserve,
            success: function(data)
            {
                console.log(data);

            }

        });

    });

});