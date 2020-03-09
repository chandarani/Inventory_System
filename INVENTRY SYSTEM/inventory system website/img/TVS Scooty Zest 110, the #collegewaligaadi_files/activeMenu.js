/***Active menu*****/
function removeActive() { 
$("#mainmenuli_one").removeClass("active");
$("#mainmenuli_two").removeClass("active");
$("#mainmenuli_three").removeClass("active");
$("#mainmenuli_four").removeClass("active");
$("#mainmenuli_five").removeClass("active");
$("#mainmenuli_six").removeClass("active");
$("#mainmenuli_seven").removeClass("active");
$("#mainmenuli_eight").removeClass("active");
}
function techActive() {
    $("#engine").removeClass("active");
    $("#chassis").removeClass("active");
    $("#tyre").removeClass("active");
    $("#fuel").removeClass("active");
    $("#elec").removeClass("active");
    $("#suspen").removeClass("active");
    $("#brak").removeClass("active");
}

$(document).ready(function() {    
if (window.location.href.indexOf("features.aspx") > -1) {
removeActive();
$("#mainmenuli_one").addClass("active");
}  
if (window.location.href.indexOf("techspec.aspx") > -1) {
removeActive();
$("#mainmenuli_two").addClass("active");
}  
if (window.location.href.indexOf("colours.aspx") > -1) {
removeActive();
$("#mainmenuli_three").addClass("active");
}
if (window.location.href.indexOf("gallery.aspx") > -1) {
removeActive();
$("#mainmenuli_four").addClass("active");
}
if (window.location.href.indexOf("buy-testride.aspx") > -1) {
removeActive();
$("#mainmenuli_five").addClass("active");
}    
if (window.location.href.indexOf("dealer-locator.aspx") > -1) {
removeActive();
$("#mainmenuli_six").addClass("active");
}
if (window.location.href.indexOf("price.aspx") > -1) {
removeActive();
$("#mainmenuli_seven").addClass("active");
}  
if (window.location.href.indexOf("reviews.aspx") > -1) {
removeActive();
$("#mainmenuli_eight").addClass("active");
}
if (window.location.href.indexOf("techspec.aspx?engine") > -1) {
    techActive();
    $("#engine").addClass("active");
}
if (window.location.href.indexOf("techspec.aspx?chassis") > -1) {
    techActive();
    $("#chassis").addClass("active");
}
if (window.location.href.indexOf("techspec.aspx?tyre") > -1) {
    techActive();
    $("#tyre").addClass("active");
}
if (window.location.href.indexOf("techspec.aspx?fuel") > -1) {
    techActive();
    $("#fuel").addClass("active");
}
if (window.location.href.indexOf("techspec.aspx?elec") > -1) {
    techActive();
    $("#elec").addClass("active");
}
if (window.location.href.indexOf("techspec.aspx?susp") > -1) {
    techActive();
    $("#suspen").addClass("active");
}
if (window.location.href.indexOf("techspec.aspx?brak") > -1) {
    techActive();
    $("#brak").addClass("active");
}
/**/});/**/





