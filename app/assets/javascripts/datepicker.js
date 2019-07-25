$(".end_at").change(function(e){
    end_at = $(e.target).val();
    start_at = $(".start_at").val();

    $.ajax({
        type: "POST",
        url: "/statistics",
        data: {
            start_at: start_at,
            end_at: end_at,
        },
        success: function (data) {
            $(".chart-container").html(data);
        },
    });
});