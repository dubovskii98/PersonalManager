(function () {
    $("#admin").show();

    $("#select01").on("change", function () {
        $(".myClass").hide();
        $("div[id='" + $(this).val() + "']").show();
    });
});