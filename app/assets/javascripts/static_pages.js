// initialization of google map
function initMap() {
    $.HSCore.components.HSGMap.init('.js-g-map');
}

$(document).on('ready', function () {
    // initialization of carousel
    $.HSCore.components.HSCarousel.init('.js-carousel');

    // initialization of header
    $.HSCore.components.HSHeader.init($('#js-header'));
    $.HSCore.helpers.HSHamburgers.init('.hamburger');

    // initialization of tabs
    $.HSCore.components.HSTabs.init('[role="tablist"]');

    // initialization of go to section
    $.HSCore.components.HSGoTo.init('.js-go-to');

    $('#processes [role="tablist"] .nav-link').on('click', function () {
        setTimeout(function () {
            $('#processesTabs .js-carousel').slick('setPosition');
        }, 200);
    });
});

$(window).on('load', function() {
    // initialization of HSScrollNav
    $.HSCore.components.HSScrollNav.init($('.js-scroll-nav'), {
        duration: 700,
        easing: 'easeOutExpo'
    });
});

$(window).on('resize', function () {
    setTimeout(function () {
        $.HSCore.components.HSTabs.init('[role="tablist"]');
    }, 200);
});
