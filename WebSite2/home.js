$(document).ready(function () {
    $(".insert-img").hover(function () {
        $(".text1").slideToggle(500);
    });
    $(".select-img").hover(function () {
        $(".text2").slideToggle(500);
    });
    $(".update-img").hover(function () {
        $(".text3").slideToggle(500);
    });
    $(".delete-img").hover(function () {
        $(".text4").slideToggle(500);
    });
    $("#a1").click(function () {
        $("#GridView1").hide();
    });
    $("#a2").click(function () {
        $("#GridView1").hide();
    });
    $("#a4").click(function () {
        $("#GridView1").hide();
    });
    $("#a5").click(function () {
        $("#GridView1").hide();
    });
});