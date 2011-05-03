(function( $ ){
  $.fn.lazyStyler = function() {
    
    this.each(function(eleIndex,styleElement) {
      elementClasses = ($(styleElement).attr('class').split(' '));
      $.each(elementClasses, function (classIndex, eleValue) {
        var styleArgs = eleValue.split('_');
        if (styleArgs[0] == 'lazy') {
          handleLazyStyling(styleElement, styleArgs);
        }

        if (styleArgs[0] == 'lazy') {
          if (styleArgs[1] == 'round') {
            handleRoundEdges(styleElement, styleArgs);
          }
        }
      });
    });

    function handleLazyStyling(styleElement, styleArgs) {
      if (styleArgs[1] == 'round') {
        handleRoundEdges(styleElement, styleArgs);
      }
      else if (styleArgs[1] == 'shadow') {
        handleBoxShadow(styleElement, styleArgs);
      }
      else {
        handleGenericStyle(styleElement, styleArgs);
      }
    }

    function handleRoundEdges(styleElement, styleArgs) {
      styleParams = fetchStyleParams(styleArgs);
      $(styleElement).css({
        '-moz-border-radius': styleParams,
        '-webkit-border-radius': styleParams,
        'border-radius': styleParams
      });
    }

    function handleBoxShadow(styleElement, styleArgs) {
      styleParams = fetchStyleParams(styleArgs);
      $(styleElement).css({
        '-moz-box-shadow': styleParams,
        '-webkit-box-shadow': styleParams,
        'box-shadow': styleParams
      });
    }

    function handleGenericStyle(styleElement, styleArgs) {
      styleProp = styleArgs[1];
      styleParams = fetchStyleParams(styleArgs);
      $(styleElement).css(styleProp, styleParams);
    }

    function fetchStyleParams(styleArgs, padToFour) {
      styleParams = '';
      $.each(styleArgs, function(styleIndex, styleValue) {
        if (styleIndex > 1) {
          styleParams += styleValue;
          if (styleValue == parseInt(styleValue).toString()) {
            styleParams += 'px';
          }
          if (styleIndex != (styleArgs.length - 1)) {
            styleParams += ' ';
          }
        }
      })

      return styleParams;
    }

  };
  
})( jQuery );
