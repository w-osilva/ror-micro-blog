(function($){
    //sidebar toggle
    var toggle = false;
    $('.sidebar-toggle').on('click', function(){
        $('.main-sidebar').toggle("slide", { direction: "left" }, 50);
        toggle = (!toggle);
        (toggle) ? $('.submenu').addClass('toggle') : $('.submenu').removeClass('toggle');
    });

    $('.item.item-dropdown .toggle').on('click', function(){
        var e = $(this).siblings('.menu-dropdown');
        e.toggle("slide", { direction: "up" }, 50);

        $('.menu-dropdown').each(function( index ) {
            if($(this)[0] != $(e)[0]) {
                $(this).hide("slide", { direction: "up" }, 50);
            }
        });
    });

    //filter box
    $('.box-filters-header').on('click', function(){
        $(this).siblings('.box-filters-body').slideToggle();
    });

    //password edit form
    $('#password_enable_edit_button').on('click', function(){
        $('#user_password_container').slideToggle();
        $(this).hide();
    });

})(jQuery);

$(function () {
    $.fn.datepicker.dates['pt-BR'] = {
        days: ["Domingo", "Segunda", "Terça", "Quarta", "Quinta", "Sexta", "Sábado"],
        daysShort: ["Dom", "Seg", "Ter", "Qua", "Qui", "Sex", "Sáb"],
        daysMin: ["Dom", "Seg", "Ter", "Qua", "Qui", "Sex", "Sáb"],
        monthsShort: ['Jan','Fev','Mar','Abr','Mai','Jun','Jul','Ago','Set','Out','Nov','Dez'],
        months: ['Janeiro','Fevereiro','Mar&ccedil;o','Abril','Maio','Junho', 'Julho','Agosto','Setembro','Outubro','Novembro','Dezembro'],
        today: "Hoje",
        clear: "Limpar",
        format: "mm/dd/yyyy",
        titleFormat: "MM yyyy", /* Leverages same syntax as 'format' */
        weekStart: 0
    };

    //Date picker
    var datepicker = $('#datepicker');
    if(datepicker.length > 0){
        $(datepicker).datepicker({
            autoclose: true,
            format: 'dd/mm/yyyy',
            language: 'pt-BR',
            todayHighlight: true
        });
    }

});

var emojis = function(window, twemoji){
    // Set the size of the rendered Emojis
    // This can be set to 16x16, 36x36, or 72x72
    twemoji.size = '16x16';

    // Parse the document body and
    // insert <img> tags in place of Unicode Emojis
    twemoji.parse(document.body);
};

$(document).ready(function(){
    emojis(window, twemoji);
});


$('body').prepend('<a href="#" class="back-to-top"></a>');
var amountScrolled = 300;
$(window).scroll(function() {
    if ( $(window).scrollTop() > amountScrolled ) {
        $('a.back-to-top').fadeIn('slow');
    } else {
        $('a.back-to-top').fadeOut('slow');
    }
});
$('a.back-to-top').click(function() {
    $('html, body').animate({
        scrollTop: 0
    }, 700);
    return false;
});