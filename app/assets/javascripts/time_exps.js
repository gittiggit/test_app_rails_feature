//$document.ready(function(){
//    alert("asdu sa");
//    $(".time_exp_date").datepicker();
//});
// In rails 4, don't need to use $document.ready(){} because of the
// rails default turbolink gem
$(function(){
    $("#time_exp_date1").datepicker({
        format: "yyyy-mm-dd"
    });
    //$(".start_time_picker").timepicker('getTime');
});
$(function(){
    $("#date2picker").datepicker({
        format: "yyyy-mm-dd"
    });
});

$(function(){
    $("#time_exp_start_time").timepicker();
    $("#time_exp_end_time").timepicker();
});

$(function(){
    $("#new_time_exp").validate({
       debug: false,
       rules: {
            "time_exp[date1]": {
                required: true,
                date: true
            },
            "time_exp[date2]": {
                required: true,
                date: true
            },
            "time_exp[start_time]": {
                required: true
            },
            "time_exp[end_time]": {
                required: true
            }
       }
    });
});

function comparetime(){
    var st = document.forms["new_time_exp"]["time_exp_start_time"].value;
    var et = document.forms["new_time_exp"]["time_exp_end_time"].value;
    if (st >= et){
        alert("End time must be greater than start time");
        return false;
    }
}

function validatedate(){
    var d1 = new Date(document.forms["new_time_exp"]["time_exp_date1"].value);
    var tod = new Date();
    if (d1 < tod){
        alert("Selected date must not be past");
        return false;
    }
}









