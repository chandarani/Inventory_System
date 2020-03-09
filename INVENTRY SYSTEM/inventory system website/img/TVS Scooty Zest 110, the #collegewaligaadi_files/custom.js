function hideFeaturesMenuImages()
{
$("#show_right_one").hide();
$("#show_right_two").hide();
$("#show_right_three").hide();
$("#show_right_four").hide();
$("#show_right_five").hide();
}
function hideTechspecMenuImages() {
    $("#show_right_six").hide();
    $("#show_right_seven").hide();
    $("#show_right_eight").hide();
    $("#show_right_nine").hide();
    $("#show_right_ten").hide();
    $("#show_right_eleven").hide();
    $("#show_right_twelve").hide();
}
function hideGalleryMenuImages() {
    $("#show_right_thireen").hide();
    $("#show_right_fourteen").hide();
}
$(document).ready(function(){
$("#dd_left_one").hover(function(){
hideFeaturesMenuImages();
$("#show_right_one").show();
});
$("#dd_left_two").hover(function(){
hideFeaturesMenuImages();
$("#show_right_two").show();
});
$("#dd_left_three").hover(function(){
hideFeaturesMenuImages();
$("#show_right_three").show();
});
$("#dd_left_four").hover(function(){
hideFeaturesMenuImages();
$("#show_right_four").show();
});
$("#dd_left_five").hover(function(){
    hideFeaturesMenuImages();
$("#show_right_five").show();
});
});

$(document).ready(function () {
    
    $("#dd_left_six").hover(function () {
        hideTechspecMenuImages();
        $("#show_right_six").show();
    });
    $("#dd_left_seven").hover(function () {
        hideTechspecMenuImages();
        $("#show_right_seven").show();
    });
    $("#dd_left_eight").hover(function () {
        hideTechspecMenuImages();
        $("#show_right_eight").show();
    });
    $("#dd_left_nine").hover(function () {
        hideTechspecMenuImages();
        $("#show_right_nine").show();
    });
    $("#dd_left_ten").hover(function () {
        hideTechspecMenuImages();
        $("#show_right_ten").show();
    });
    $("#dd_left_eleven").hover(function () {
        hideTechspecMenuImages();
        $("#show_right_eleven").show();
    });
    $("#dd_left_twelve").hover(function () {
        hideTechspecMenuImages();
        $("#show_right_twelve").show();
    });
});
$(document).ready(function () {

    $("#dd_left_thireen").hover(function () {
        hideGalleryMenuImages();
        $("#show_right_thireen").show();
    });
    $("#dd_left_fourteen").hover(function () {
        hideGalleryMenuImages();
        $("#show_right_fourteen").show();
    });
});