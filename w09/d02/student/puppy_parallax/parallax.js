var bg = $(".bg")


// bg.scrollTop(how_far_the_user_has_scrolled)

// bg.css

// $('.top-left').css('top', $(window).scrollTop());

// $(window).on('scroll', function(){$('.top-left').css('top', $(window).scrollTop())});

$(window).on('scroll', function(){$('.left').css('top', $(window).scrollTop())});

$(window).on('scroll', function(){$('.center').css('top', $(window).scrollTop()+30)});

$amountScrolled = $(window).scrollTop();

bg.css("background-position", $amountScrolled * 0.7);
