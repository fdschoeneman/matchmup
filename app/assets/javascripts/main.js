var web = (function() {
    'use strict';

    return {

        // Call events here
        run: function() {
            this.found(); // start foundation
            this.fx_fn(); // fx section
            this.loadImages(); // load images
            this.filters(); // filter section
        },
        // prelaoder function
        preloader: function() {
            $('.preloader').animate({
                opacity: 0
            }, 1000, null, function() {
                $('.preloader').css({
                    'display': 'block',
                    'z-index': '0'
                })
                $('body').css('overflow', 'auto');
            });
        },
        // load foundation js
        found: function() {
            return $(document).foundation();
        },
        // show and hide sections with menu
        fx_fn: function() {
            var obj = 0;
            var h = 1300; // hide time ms
            var s = 1300; // show time ms

            // add class first element
            $('#menu a:first').addClass('active');

            $('#menu a').click(function() {
                obj = this;
                if (!$(this).hasClass('active')) {


                    // close all visible divs with the class of .section
                    $('.section:visible').fadeOut(h, function() {
                        $('#menu a').removeClass('active');
                        $(obj).addClass('active');
                        var new_ = $($(obj).attr('href'));
                        new_.fadeIn(s);

                    });

                    // animate top 
                    $("html,body").animate({
                        scrollTop: 0
                    }, 800);
                }

                // Change Backgrounds on click
                var links = $(this).attr('href');
                switch (links) {
                    case '#home':
                        $('body').css({
                            'background': '#3498DB'
                        });
                        break;
                    case '#about':
                        $('body').css({
                            'background': '#34495E'
                        });
                        break;
                    case '#portfolio':
                        $('body').css({
                            'background': '#E67E22'
                        });
                        break;
                    case '#services':
                        $('body').css({
                            'background': '#E74C3C'
                        });
                        break;
                    case '#contact':
                        $('body').css({
                            'background': '#1ABC9C'
                        });
                        break;
                }

                return false;
            });
        },
        // load images 
        loadImages: function() {
            var self = this;
            $('img.preloadThis').each(function() {
                $(this).css({
                    opacity: 0
                }).load(function() {
                    $(this).animate({
                        opacity: 1
                    }, 1000); // fade them in
                    self.preloader(); // the preloader
                }).attr('src', $(this).data('src'));
            });
        },
        filters: function() {
            // Portfolio
            $('ul#filter a').click(function() {
                // Remove class
                $('ul#filter .active').removeClass('active');
                // Add parent class
                $(this).parent().addClass('active');
                // find same class of menu
                var filterVal = $(this).text().toLowerCase().replace(' ', '-');
                if (filterVal == 'all') {
                    // If click all execute this
                    $('#projects li')
                        .removeClass('item_selected')
                        .addClass('show_info');
                } else {
                    // Each all and filter values
                    $('#projects li').each(function() {
                        // Hide 
                        if (!$(this).hasClass(filterVal)) {
                            $(this)
                                .addClass('item_selected')
                                .removeClass('show_info');
                            // Show
                        } else {
                            $(this)
                                .removeClass('item_selected')
                                .addClass('show_info');
                        }
                    });
                }
                if (filterVal == 'reset') {
                    $('#projects li').each(function() {
                        $(this).removeClass('show_info').removeClass('item_selected');
                    });
                }

                return false;
            });
            $('.portfolio-item').on('click', function() {
                $(this).toggleClass('show_info').siblings().removeClass('show_info');
            });
        }
    };
})();

web.run(); // run web
