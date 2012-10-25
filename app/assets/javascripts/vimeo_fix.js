jQuery(next).click(function(event) {
            $("iframe").each(function() {
                this.contentWindow.postMessage('{ "method": "pause" }', "http://player.vimeo.com");
            });
            if (!isAnimating) {
                if (firstElementOnViewPort > numElmts) {
                    firstElementOnViewPort = 2;
                    jQuery(sliderList).css('left', "0px");
                }
                else {
                    firstElementOnViewPort++;
                }
                jQuery(sliderList).animate({
                    left: "-=" + increment,
                    y: 0,
                    queue: true
                }, "swing", function(){isAnimating = false;});
                isAnimating = true;
            }
        });
    }
};
​