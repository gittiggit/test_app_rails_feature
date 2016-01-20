$(document).ready(function(){
    $(".test-paragraph").click(function(){
        $(this).hide(2000);
    });

    $(".test-sliding").click(function(){
        $(this).slideUp(2000);
    });

    $(".test-sliding").click(function(){
        $(this).slideDown(2000);
    });

    $(".test-fade-in").click(function(){
        $(".test-fading").fadeIn(2000, function(){
            alert("fadeIn() completed");
        });
    });

    $(".test-fade-out").click(function(){
        $(".test-fading").fadeOut(2000, function(){
            alert("fadeOut() completed");
        });
    });

    $(".test-fade-toggle").click(function(){
        $(".test-fading").fadeToggle(2000, function(){
            alert("fadeToggle() completed");
        });
    });

    $(".method-chaining").click(function(){
        $(".test-chaining").css("color", "red")
            .slideUp(1000)
            .slideDown(1000);
    });
});

