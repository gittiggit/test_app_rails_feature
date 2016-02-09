//$document.ready(function(){
//    alert("asdu sa");
//    $(".time_exp_date").datepicker();
//});
// In rails 4, don't need to use $document.ready(){} because of the
// rails default turbolink gem
$(function(){
    $("#date1picker").datepicker({
        format: "yy-mm-dd"
    });
    $("#time_exp_date2").datepicker({
        duration: "slow",
        dateFormat: "yy-mm-dd"
    });
    //$(".start_time_picker").timepicker('getTime');
});
$(function(){
    $("#time_exp_start_time").timepicker();
    $("#time_exp_end_time").timepicker();
});


