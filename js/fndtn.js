/*
 * Foundation Responsive Library
 * http://foundation.zurb.com
 * Copyright 2013, ZURB
 * Free to use under the MIT license.
 * http://www.opensource.org/licenses/mit-license.php
*/

/*jslint unparam: true, browser: true, indent: 2 */

// Accommodate running jQuery or Zepto in noConflict() mode by
// using an anonymous function to redefine the $ shorthand name.
// See http://docs.jquery.com/Using_jQuery_with_Other_Libraries
// and http://zeptojs.com/
var libFuncName = null;

if (typeof jQuery === "undefined" &&
    typeof Zepto === "undefined" &&
    typeof $ === "function") {
  libFuncName = $;
} else if (typeof jQuery === "function") {
  libFuncName = jQuery;
} else if (typeof Zepto === "function") {
  libFuncName = Zepto;
} else {
  throw new TypeError();
}

(function ($, window, document, undefined) {
  'use strict';

  // add dusty browser stuff
  if (!Array.prototype.filter) {
    Array.prototype.filter = function(fun /*, thisp */) {
      "use strict";
   
      if (this == null) {
        throw new TypeError();
      }

      var t = Object(this),
          len = t.length >>> 0;
      if (typeof fun != "function") {
          return;
      }

      var res = [],
          thisp = arguments[1];
      for (var i = 0; i < len; i++) {
        if (i in t) {
          var val = t[i]; // in case fun mutates this
          if (fun && fun.call(thisp, val, i, t)) {
            res.push(val);
          }
        }
      }

      return res;
    }
  }

  if (!Function.prototype.bind) {
    Function.prototype.bind = function (oThis) {
      if (typeof this !== "function") {
        // closest thing possible to the ECMAScript 5 internal IsCallable function
        throw new TypeError("Function.prototype.bind - what is trying to be bound is not callable");
      }
   
      var aArgs = Array.prototype.slice.call(arguments, 1), 
          fToBind = this, 
          fNOP = function () {},
          fBound = function () {
            return fToBind.apply(this instanceof fNOP && oThis
               ? this
               : oThis,
             aArgs.concat(Array.prototype.slice.call(arguments)));
          };
   
      fNOP.prototype = this.prototype;
      fBound.prototype = new fNOP();
   
      return fBound;
    };
  }

  if (!Array.prototype.indexOf) {
    Array.prototype.indexOf = function (searchElement /*, fromIndex */ ) {
      "use strict";
      if (this == null) {
        throw new TypeError();
      }
      var t = Object(this);
      var len = t.length >>> 0;
      if (len === 0) {
        return -1;
      }
      var n = 0;
      if (arguments.length > 1) {
        n = Number(arguments[1]);
        if (n != n) { // shortcut for verifying if it's NaN
          n = 0;
        } else if (n != 0 && n != Infinity && n != -Infinity) {
          n = (n > 0 || -1) * Math.floor(Math.abs(n));
        }
      }
      if (n >= len) {
          return -1;
      }
      var k = n >= 0 ? n : Math.max(len - Math.abs(n), 0);
      for (; k < len; k++) {
        if (k in t && t[k] === searchElement) {
          return k;
        }
      }
      return -1;
    }
  }

  // fake stop() for zepto.
  $.fn.stop = $.fn.stop || function() {
    return this;
  };

  window.Foundation = {
    name : 'Foundation',

    version : '4.1.5',

    cache : {},

    init : function (scope, libraries, method, options, response, /* internal */ nc) {
      var library_arr,
          args = [scope, method, options, response],
          responses = [],
          nc = nc || false;

      // disable library error catching,
      // used for development only
      if (nc) this.nc = nc;

      // check RTL
      this.rtl = /rtl/i.test($('html').attr('dir'));

      // set foundation global scope
      this.scope = scope || this.scope;

      if (libraries && typeof libraries === 'string') {
        if (/off/i.test(libraries)) return this.off();

        library_arr = libraries.split(' ');

        if (library_arr.length > 0) {
          for (var i = library_arr.length - 1; i >= 0; i--) {
            responses.push(this.init_lib(library_arr[i], args));
          }
        }
      } else {
        for (var lib in this.libs) {
          responses.push(this.init_lib(lib, args));
        }
      }

      // if first argument is callback, add to args
      if (typeof libraries === 'function') {
        args.unshift(libraries);
      }

      return this.response_obj(responses, args);
    },

    response_obj : function (response_arr, args) {
      for (var i = 0, len = args.length; i < len; i++) {
        if (typeof args[i] === 'function') {
          return args[i]({
            errors: response_arr.filter(function (s) {
              if (typeof s === 'string') return s;
            })
          });
        }
      }

      return response_arr;
    },

    init_lib : function (lib, args) {
      return this.trap(function () {
        if (this.libs.hasOwnProperty(lib)) {
          this.patch(this.libs[lib]);
          return this.libs[lib].init.apply(this.libs[lib], args);
        }
        else {
          return function () {};
        }
      }.bind(this), lib);
    },

    trap : function (fun, lib) {
      if (!this.nc) {
        try {
          return fun();
        } catch (e) {
          return this.error({name: lib, message: 'could not be initialized', more: e.name + ' ' + e.message});
        }
      }

      return fun();
    },

    patch : function (lib) {
      this.fix_outer(lib);
      lib.scope = this.scope;
      lib.rtl = this.rtl;
    },

    inherit : function (scope, methods) {
      var methods_arr = methods.split(' ');

      for (var i = methods_arr.length - 1; i >= 0; i--) {
        if (this.lib_methods.hasOwnProperty(methods_arr[i])) {
          this.libs[scope.name][methods_arr[i]] = this.lib_methods[methods_arr[i]];
        }
      }
    },

    random_str : function (length) {
      var chars = '0123456789ABCDEFGHIJKLMNOPQRSTUVWXTZabcdefghiklmnopqrstuvwxyz'.split('');

      if (!length) {
          length = Math.floor(Math.random() * chars.length);
      }

      var str = '';
      for (var i = 0; i < length; i++) {
          str += chars[Math.floor(Math.random() * chars.length)];
      }
      return str;
    },

    libs : {},

    // methods that can be inherited in libraries
    lib_methods : {
      set_data : function (node, data) {
        // this.name references the name of the library calling this method
        var id = [this.name,+new Date(),Foundation.random_str(5)].join('-');

        Foundation.cache[id] = data;
        node.attr('data-' + this.name + '-id', id);
        return data;
      },

      get_data : function (node) {
        return Foundation.cache[node.attr('data-' + this.name + '-id')];
      },

      remove_data : function (node) {
        if (node) {
          delete Foundation.cache[node.attr('data-' + this.name + '-id')];
          node.attr('data-' + this.name + '-id', '');
        } else {
          $('[data-' + this.name + '-id]').each(function () {
            delete Foundation.cache[$(this).attr('data-' + this.name + '-id')];
            $(this).attr('data-' + this.name + '-id', '');
          });
        }
      },

      throttle : function(fun, delay) {
        var timer = null;
        return function () {
          var context = this, args = arguments;
          clearTimeout(timer);
          timer = setTimeout(function () {
            fun.apply(context, args);
          }, delay);
        };
      },

      // parses data-options attribute on nodes and turns
      // them into an object
      data_options : function (el) {
        var opts = {}, ii, p,
            opts_arr = (el.attr('data-options') || ':').split(';'),
            opts_len = opts_arr.length;

        function isNumber (o) {
          return ! isNaN (o-0) && o !== null && o !== "" && o !== false && o !== true;
        }

        function trim(str) {
          if (typeof str === 'string') return $.trim(str);
          return str;
        }

        // parse options
        for (ii = opts_len - 1; ii >= 0; ii--) {
          p = opts_arr[ii].split(':');

          if (/true/i.test(p[1])) p[1] = true;
          if (/false/i.test(p[1])) p[1] = false;
          if (isNumber(p[1])) p[1] = parseInt(p[1], 10);

          if (p.length === 2 && p[0].length > 0) {
            opts[trim(p[0])] = trim(p[1]);
          }
        }

        return opts;
      },

      delay : function (fun, delay) {
        return setTimeout(fun, delay);
      },

      // animated scrolling
      scrollTo : function (el, to, duration) {
        if (duration < 0) return;
        var difference = to - $(window).scrollTop();
        var perTick = difference / duration * 10;

        this.scrollToTimerCache = setTimeout(function() {
          if (!isNaN(parseInt(perTick, 10))) {
            window.scrollTo(0, $(window).scrollTop() + perTick);
            this.scrollTo(el, to, duration - 10);
          }
        }.bind(this), 10);
      },

      // not supported in core Zepto
      scrollLeft : function (el) {
        if (!el.length) return;
        return ('scrollLeft' in el[0]) ? el[0].scrollLeft : el[0].pageXOffset;
      },

      // test for empty object or array
      empty : function (obj) {
        if (obj.length && obj.length > 0)    return false;
        if (obj.length && obj.length === 0)  return true;

        for (var key in obj) {
          if (hasOwnProperty.call(obj, key))    return false;
        }

        return true;
      }
    },

    fix_outer : function (lib) {
      lib.outerHeight = function (el, bool) {
        if (typeof Zepto === 'function') {
          return el.height();
        }

        if (typeof bool !== 'undefined') {
          return el.outerHeight(bool);
        }

        return el.outerHeight();
      };

      lib.outerWidth = function (el) {
        if (typeof Zepto === 'function') {
          return el.width();
        }

        if (typeof bool !== 'undefined') {
          return el.outerWidth(bool);
        }

        return el.outerWidth();
      };
    },

    error : function (error) {
      return error.name + ' ' + error.message + '; ' + error.more;
    },

    // remove all foundation events.
    off: function () {
      $(this.scope).off('.fndtn');
      $(window).off('.fndtn');
      return true;
    },

    zj : function () {
      if (typeof Zepto !== 'undefined') {
        return Zepto;
      } else {
        return jQuery;
      }
    }()
  };

  $.fn.foundation = function () {
    var args = Array.prototype.slice.call(arguments, 0);

    return this.each(function () {
      Foundation.init.apply(Foundation, [this].concat(args));
      return this;
    });
  };

}(libFuncName, this, this.document));

;(function ($, window, document, undefined) {
  'use strict';

  Foundation.libs.forms = {
    name : 'forms',

    version : '4.0.4',

    settings : {
      disable_class: 'no-custom'
    },

    init : function (scope, method, options) {
      this.scope = scope || this.scope;

      if (typeof method === 'object') {
        $.extend(true, this.settings, method);
      }

      if (typeof method != 'string') {
        if (!this.settings.init) {
          this.events();
        }

        this.assemble();

        return this.settings.init;
      } else {
        return this[method].call(this, options);
      }
    },

    assemble : function () {
      $('form.custom input[type="radio"]', $(this.scope)).not('[data-customforms="disabled"]')
        .each(this.append_custom_markup);
      $('form.custom input[type="checkbox"]', $(this.scope)).not('[data-customforms="disabled"]')
        .each(this.append_custom_markup);
      $('form.custom select', $(this.scope))
          .not('[data-customforms="disabled"]')
          .not('[multiple=multiple]')
        .each(this.append_custom_select);
    },

    events : function () {
      var self = this;

      $(this.scope)
        .on('click.fndtn.forms', 'form.custom span.custom.checkbox', function (e) {
          e.preventDefault();
          e.stopPropagation();
          self.toggle_checkbox($(this));
        })
        .on('click.fndtn.forms', 'form.custom span.custom.radio', function (e) {
          e.preventDefault();
          e.stopPropagation();
          self.toggle_radio($(this));
        })
        .on('change.fndtn.forms', 'form.custom select:not([data-customforms="disabled"])', function (e) {
          self.refresh_custom_select($(this));
        })
        .on('click.fndtn.forms', 'form.custom label', function (e) {
          var $associatedElement = $('#' + self.escape($(this).attr('for')) + ':not([data-customforms="disabled"])'),
              $customCheckbox,
              $customRadio;
          if ($associatedElement.length !== 0) {
            if ($associatedElement.attr('type') === 'checkbox') {
              e.preventDefault();
              $customCheckbox = $(this).find('span.custom.checkbox');
              //the checkbox might be outside after the label or inside of another element
              if ($customCheckbox.length == 0) {
                $customCheckbox = $associatedElement.add(this).siblings('span.custom.checkbox').first();
              }
              self.toggle_checkbox($customCheckbox);
            } else if ($associatedElement.attr('type') === 'radio') {
              e.preventDefault();
              $customRadio = $(this).find('span.custom.radio');
              //the radio might be outside after the label or inside of another element
              if ($customRadio.length == 0) {
                $customRadio = $associatedElement.add(this).siblings('span.custom.radio').first();
              }
              self.toggle_radio($customRadio);
            }
          }
        })
        .on('click.fndtn.forms', 'form.custom div.custom.dropdown a.current, form.custom div.custom.dropdown a.selector', function (e) {
          var $this = $(this),
              $dropdown = $this.closest('div.custom.dropdown'),
              $select = $dropdown.prev();

          // make sure other dropdowns close
          if(!$dropdown.hasClass('open'))
            $(self.scope).trigger('click');

          e.preventDefault();
          if (false === $select.is(':disabled')) {
            $dropdown.toggleClass('open');

            if ($dropdown.hasClass('open')) {
              $(self.scope).on('click.fndtn.forms.customdropdown', function () {
                $dropdown.removeClass('open');
                $(self.scope).off('.fndtn.forms.customdropdown');
              });
            } else {
              $(self.scope).on('.fndtn.forms.customdropdown');
            }
            return false;
          }
        })
        .on('click.fndtn.forms touchend.fndtn.forms', 'form.custom div.custom.dropdown li', function (e) {
          var $this = $(this),
              $customDropdown = $this.closest('div.custom.dropdown'),
              $select = $customDropdown.prev(),
              selectedIndex = 0;

          e.preventDefault();
          e.stopPropagation();

          if ( ! $(this).hasClass('disabled')) {
            $('div.dropdown').not($customDropdown).removeClass('open');

            var $oldThis= $this
              .closest('ul')
              .find('li.selected');
            $oldThis.removeClass('selected');

            $this.addClass('selected');

            $customDropdown
              .removeClass('open')
              .find('a.current')
              .html($this.html());

            $this.closest('ul').find('li').each(function (index) {
              if ($this[0] == this) {
                selectedIndex = index;
              }

            });
            $select[0].selectedIndex = selectedIndex;

            //store the old value in data
            $select.data('prevalue', $oldThis.html());
            $select.trigger('change');
          }
        });

      $(window).on('keydown', function (e) {
        var focus = document.activeElement,
            dropdown = $('.custom.dropdown.open');

        if (dropdown.length > 0) {
          e.preventDefault();

          if (e.which === 13) {
            dropdown.find('li.selected').trigger('click');
          }

          if (e.which === 38) {
            var current = dropdown.find('li.selected'),
                prev = current.prev(':not(.disabled)');

            if (prev.length > 0) {
              current.removeClass('selected');
              prev.addClass('selected');
            }
          } else if (e.which === 40) {
            var current = dropdown.find('li.selected'),
                next = current.next(':not(.disabled)');

            if (next.length > 0) {
              current.removeClass('selected');
              next.addClass('selected');
            }
          }
        }
      });

      this.settings.init = true;
    },

    append_custom_markup : function (idx, sel) {
      var $this = $(sel).hide(),
          type  = $this.attr('type'),
          $span = $this.next('span.custom.' + type);

      if ($span.length === 0) {
        $span = $('<span class="custom ' + type + '"></span>').insertAfter($this);
      }

      $span.toggleClass('checked', $this.is(':checked'));
      $span.toggleClass('disabled', $this.is(':disabled'));
    },

    append_custom_select : function (idx, sel) {
      var self = Foundation.libs.forms,
          $this = $( sel ),
          $customSelect = $this.next( 'div.custom.dropdown' ),
          $customList = $customSelect.find( 'ul' ),
          $selectCurrent = $customSelect.find( ".current" ),
          $selector = $customSelect.find( ".selector" ),
          $options = $this.find( 'option' ),
          $selectedOption = $options.filter( ':selected' ),
          copyClasses = $this.attr('class') ? $this.attr('class').split(' ') : [],
          maxWidth = 0,
          liHtml = '',
          $listItems,
          $currentSelect = false;

      if ($this.hasClass(self.settings.disable_class)) return;

      if ($customSelect.length === 0) {
        var customSelectSize = $this.hasClass( 'small' )   ? 'small'   :
                               $this.hasClass( 'medium' )  ? 'medium'  :
                               $this.hasClass( 'large' )   ? 'large'   :
                               $this.hasClass( 'expand' )  ? 'expand'  : '';

        $customSelect = $('<div class="' + ['custom', 'dropdown', customSelectSize ].concat(copyClasses).filter(function(item, idx,arr){ if(item == '') return false; return arr.indexOf(item) == idx; }).join( ' ' ) + '"><a href="#" class="selector"></a><ul /></div>');
        $selector = $customSelect.find(".selector");
        $customList = $customSelect.find("ul");
        liHtml = $options.map(function() { return "<li>" + $( this ).html() + "</li>"; } ).get().join( '' );
        $customList.append(liHtml);
        $currentSelect = $customSelect.prepend('<a href="#" class="current">' + $selectedOption.html() + '</a>' ).find( ".current" );
        $this
          .after( $customSelect )
          .hide();

      } else {
        liHtml = $options.map(function() {
            return "<li>" + $( this ).html() + "</li>";
          })
          .get().join('');
        $customList
          .html('')
          .append(liHtml);

      } // endif $customSelect.length === 0
      $customSelect.toggleClass('disabled', $this.is( ':disabled' ) );
      $listItems = $customList.find( 'li' );

      $options.each( function ( index ) {
        if ( this.selected ) {
          $listItems.eq( index ).addClass( 'selected' );

          if ($currentSelect) {
            $currentSelect.html( $( this ).html() );
          }

        }
        if ($(this).is(':disabled')) {
          $listItems.eq( index ).addClass( 'disabled' );
        }
      });

      //
      // If we're not specifying a predetermined form size.
      //
      if (!$customSelect.is('.small, .medium, .large, .expand')) {

        // ------------------------------------------------------------------------------------
        // This is a work-around for when elements are contained within hidden parents.
        // For example, when custom-form elements are inside of a hidden reveal modal.
        //
        // We need to display the current custom list element as well as hidden parent elements
        // in order to properly calculate the list item element's width property.
        // -------------------------------------------------------------------------------------

        $customSelect.addClass( 'open' );
        //
        // Quickly, display all parent elements.
        // This should help us calcualate the width of the list item's within the drop down.
        //
        var self = Foundation.libs.forms;
        self.hidden_fix.adjust( $customList );

        maxWidth = ( self.outerWidth($listItems) > maxWidth ) ? self.outerWidth($listItems) : maxWidth;

        Foundation.libs.forms.hidden_fix.reset();

        $customSelect.removeClass( 'open' );

      } // endif

    },

    refresh_custom_select : function ($select) {
      var self = this;
      var maxWidth = 0,
        $customSelect = $select.next(),
        $options = $select.find('option');

      $customSelect.find('ul').html('');

      $options.each(function () {
        var $li = $('<li>' + $(this).html() + '</li>');
        $customSelect.find('ul').append($li);
      });

      // re-populate
      $options.each(function (index) {
        if (this.selected) {
          $customSelect.find('li').eq(index).addClass('selected');
          $customSelect.find('.current').html($(this).html());
        }
        if ($(this).is(':disabled')) {
          $customSelect.find('li').eq(index).addClass('disabled');
        }
      });

      // fix width
      $customSelect.removeAttr('style')
        .find('ul').removeAttr('style');
      $customSelect.find('li').each(function () {
        $customSelect.addClass('open');
        if (self.outerWidth($(this)) > maxWidth) {
          maxWidth = self.outerWidth($(this));
        }
        $customSelect.removeClass('open');
      });
    },

    toggle_checkbox : function ($element) {
      var $input = $element.prev(),
          input = $input[0];

      if (false === $input.is(':disabled')) {
        input.checked = ((input.checked) ? false : true);
        $element.toggleClass('checked');

        $input.trigger('change');
      }
    },

    toggle_radio : function ($element) {
      var $input = $element.prev(),
          $form = $input.closest('form.custom'),
          input = $input[0];

      if (false === $input.is(':disabled')) {
        $form.find('input[type="radio"][name="' + this.escape($input.attr('name')) + '"]').next().not($element).removeClass('checked');
        if ( !$element.hasClass('checked') ) {
          $element.toggleClass('checked');
        }
        input.checked = $element.hasClass('checked');

        $input.trigger('change');
      }
    },

    escape : function (text) {
      return text.replace(/[-[\]{}()*+?.,\\^$|#\s]/g, "\\$&");
    },

    hidden_fix : {
      /**
       * Sets all hidden parent elements and self to visibile.
       *
       * @method adjust
       * @param {jQuery Object} $child
       */

      // We'll use this to temporarily store style properties.
      tmp : [],

      // We'll use this to set hidden parent elements.
      hidden : null,

      adjust : function( $child ) {
        // Internal reference.
        var _self = this;

        // Set all hidden parent elements, including this element.
        _self.hidden = $child.parents().andSelf().filter( ":hidden" );

        // Loop through all hidden elements.
        _self.hidden.each( function() {

          // Cache the element.
          var $elem = $( this );

          // Store the style attribute.
          // Undefined if element doesn't have a style attribute.
          _self.tmp.push( $elem.attr( 'style' ) );

          // Set the element's display property to block,
          // but ensure it's visibility is hidden.
          $elem.css( { 'visibility' : 'hidden', 'display' : 'block' } );
        });

      }, // end adjust

      /**
       * Resets the elements previous state.
       *
       * @method reset
       */
      reset : function() {
        // Internal reference.
        var _self = this;
        // Loop through our hidden element collection.
        _self.hidden.each( function( i ) {
          // Cache this element.
          var $elem = $( this ),
              _tmp = _self.tmp[ i ]; // Get the stored 'style' value for this element.

          // If the stored value is undefined.
          if( _tmp === undefined )
            // Remove the style attribute.
            $elem.removeAttr( 'style' );
          else
            // Otherwise, reset the element style attribute.
            $elem.attr( 'style', _tmp );

        });
        // Reset the tmp array.
        _self.tmp = [];
        // Reset the hidden elements variable.
        _self.hidden = null;

      } // end reset

    },

    off : function () {
      $(this.scope).off('.fndtn.forms');
    }
  };
}(Foundation.zj, this, this.document));


;(function ($, window, document, undefined) {
  'use strict';

  Foundation.libs.dropdown = {
    name : 'dropdown',

    version : '4.1.3',

    settings : {
      activeClass: 'open',
      opened: function(){},
      closed: function(){}
    },

    init : function (scope, method, options) {
      this.scope = scope || this.scope;
      Foundation.inherit(this, 'throttle scrollLeft');

      if (typeof method === 'object') {
        $.extend(true, this.settings, method);
      }

      if (typeof method != 'string') {

        if (!this.settings.init) {
          this.events();
        }

        return this.settings.init;
      } else {
        return this[method].call(this, options);
      }
    },

    events : function () {
      var self = this;

      $(this.scope)
        .on('click.fndtn.dropdown', '[data-dropdown]', function (e) {
            e.preventDefault();
            self.toggle($(this));
        })
        .on('opened.fndtn.dropdown', '[data-dropdown-content]', this.settings.opened)
        .on('closed.fndtn.dropdown', '[data-dropdown-content]', this.settings.closed);

      $('body').on('click.fndtn.dropdown', function (e) {
        var parent = $(e.target).closest('[data-dropdown-content]');

        if ($(e.target).data('dropdown')) {
          return;
        }
        if (parent.length > 0 && ($(e.target).is('[data-dropdown-content]') || $.contains(parent.first()[0], e.target))) {
          e.stopPropagation();
          return;
        }

        self.close.call(self, $('[data-dropdown-content]'));
      });

      $(window).on('resize.fndtn.dropdown', self.throttle(function () {
        self.resize.call(self);
      }, 50)).trigger('resize');

      this.settings.init = true;
    },

    close: function (dropdown) {
      var self = this;
      dropdown.each(function () {
        if ($(this).hasClass(self.settings.activeClass)) {
          $(this)
            .css(Foundation.rtl ? 'right':'left', '-99999px')
            .removeClass(self.settings.activeClass);
          $(this).trigger('closed');
        }
      });
    },

    open: function (dropdown, target) {
        this
          .css(dropdown
            .addClass(this.settings.activeClass), target);
        dropdown.trigger('opened');
    },

    toggle : function (target) {
      var dropdown = $('#' + target.data('dropdown'));

      this.close.call(this, $('[data-dropdown-content]').not(dropdown));

      if (dropdown.hasClass(this.settings.activeClass)) {
        this.close.call(this, dropdown);
      } else {
        this.open.call(this, dropdown, target);
      }
    },

    resize : function () {
      var dropdown = $('[data-dropdown-content].open'),
          target = $("[data-dropdown='" + dropdown.attr('id') + "']");

      if (dropdown.length && target.length) {
        this.css(dropdown, target);
      }
    },

    css : function (dropdown, target) {
      // temporary workaround until 4.2
      if (/body/i.test(dropdown.offsetParent()[0].nodeName)) {
        var position = target.offset();
        position.top -= dropdown.offsetParent().offset().top;
        position.left -= dropdown.offsetParent().offset().left;
      } else {
        var position = target.position();
      }

      if (this.small()) {
        dropdown.css({
          position : 'absolute',
          width: '95%',
          left: '2.5%',
          'max-width': 'none',
          top: position.top + this.outerHeight(target)
        });
      } else {
        if (!Foundation.rtl && $(window).width() > this.outerWidth(dropdown) + target.offset().left) {
          var left = position.left;
        } else {
          if (!dropdown.hasClass('right')) {
            dropdown.addClass('right');
          }
          var left = position.left - (this.outerWidth(dropdown) - this.outerWidth(target));
        }

        dropdown.attr('style', '').css({
          position : 'absolute',
          top: position.top + this.outerHeight(target),
          left: left
        });
      }

      return dropdown;
    },

    small : function () {
      return $(window).width() < 768 || $('html').hasClass('lt-ie9');
    },

    off: function () {
      $(this.scope).off('.fndtn.dropdown');
      $('html, body').off('.fndtn.dropdown');
      $(window).off('.fndtn.dropdown');
      $('[data-dropdown-content]').off('.fndtn.dropdown');
      this.settings.init = false;
    }
  };
}(Foundation.zj, this, this.document));

/*jslint unparam: true, browser: true, indent: 2 */

;(function ($, window, document, undefined) {
  'use strict';

  Foundation.libs.section = {
    name: 'section',

    version : '4.1.7',

    settings : {
      deep_linking: false,
      one_up: true,
      section_selector : '[data-section]',
      region_selector : 'section, .section, [data-section-region]',
      title_selector : '.title, [data-section-title]',
      active_region_selector : 'section.active, .section.active, .active[data-section-region]',
      content_selector : '.content, [data-section-content]',
      nav_selector : '[data-section="vertical-nav"], [data-section="horizontal-nav"]',
      callback: function (){}
    },

    init : function (scope, method, options) {
      var self = this;
      Foundation.inherit(this, 'throttle data_options position_right offset_right');

      if (typeof method === 'object') {
        $.extend(true, self.settings, method);
      }

      if (typeof method != 'string') {
        this.set_active_from_hash();
        this.events();

        return true;
      } else {
        return this[method].call(this, options);
      }
    },

    events : function () {
      var self = this;

      $(this.scope)
        .on('click.fndtn.section', '[data-section] .title, [data-section] [data-section-title]', function (e) {
          var $this = $(this),
              section = $this.closest(self.settings.section_selector);

          self.toggle_active.call(this, e, self);
          self.reflow();
        });

      $(window)
        .on('resize.fndtn.section', self.throttle(function () {
          self.resize.call(this);
        }, 30))
        .on('hashchange', function () {
          if (!self.settings.toggled){
            self.set_active_from_hash();
            $(this).trigger('resize');
          }
        }).trigger('resize');

      $(document)
        .on('click.fndtn.section', function (e) {
          if ($(e.target).closest(self.settings.title_selector).length < 1) {
            $(self.settings.nav_selector)
              .children(self.settings.region_selector)
              .removeClass('active')
              .attr('style', '');
          }
        });

    },

    toggle_active : function (e, self) {
      var $this = $(this),
          self = Foundation.libs.section,
          region = $this.closest(self.settings.region_selector),
          content = $this.siblings(self.settings.content_selector),
          parent = region.parent(),
          settings = $.extend({}, self.settings, self.data_options(parent)),
          prev_active_section = parent
            .children(self.settings.active_region_selector);

      self.settings.toggled = true;

      if (!settings.deep_linking && content.length > 0) {
        e.preventDefault();
      }

      if (region.hasClass('active')) {
        // this is causing the style flash.
        if (self.small(parent)
          || self.is_vertical_nav(parent)
          || self.is_horizontal_nav(parent)
          || self.is_accordion(parent)) {
            if (prev_active_section[0] !== region[0]
              || (prev_active_section[0] === region[0] && !settings.one_up)) {
              region
                .removeClass('active')
                .attr('style', '');
            }
        }
      } else {
        var prev_active_section = parent
              .children(self.settings.active_region_selector),
            title_height = self.outerHeight(region
              .children(self.settings.title_selector));

        if (self.small(parent) || settings.one_up) {

          if (self.small(parent)) {
            prev_active_section.attr('style', '');
          } else {
            prev_active_section.attr('style',
              'visibility: hidden; padding-top: '+title_height+'px;');
          }
        }

        if (self.small(parent)) {
          region.attr('style', '');
        } else {
          region.css('padding-top', title_height);
        }

        region.addClass('active');

        if (prev_active_section.length > 0) {
          prev_active_section
            .removeClass('active')
            .attr('style', '');
        }

        // Toggle the content display attribute. This is done to
        // ensure accurate outerWidth measurements that account for
        // the scrollbar.
        if (self.is_vertical_tabs(parent)) {
          content.css('display', 'block');

          if (prev_active_section !== null) {
            prev_active_section
              .children(self.settings.content_selector)
              .css('display', 'none');
          }
        }
      }

      setTimeout(function () {
        self.settings.toggled = false;
      }, 300);

      settings.callback();
    },

    resize : function () {
      var self = Foundation.libs.section,
          sections = $(self.settings.section_selector);

      sections.each(function() {
        var $this = $(this),
            active_section = $this
              .children(self.settings.active_region_selector),
            settings = $.extend({}, self.settings, self.data_options($this));

        if (active_section.length > 1) {
          active_section
            .not(':first')
            .removeClass('active')
            .attr('style', '');
        } else if (active_section.length < 1
          && !self.is_vertical_nav($this)
          && !self.is_horizontal_nav($this)
          && !self.is_accordion($this)) {

          var first = $this.children(self.settings.region_selector).first();

          if (settings.one_up || !self.small($this)) {
            first.addClass('active');
          }

          if (self.small($this)) {
            first.attr('style', '');
          } else {
            first.css('padding-top', self.outerHeight(first
              .children(self.settings.title_selector)));
          }
        }

        if (self.small($this)) {
          active_section.attr('style', '');
        } else {
          active_section.css('padding-top', self.outerHeight(active_section
            .children(self.settings.title_selector)));
        }

        self.position_titles($this);

        if ( (self.is_horizontal_nav($this) && !self.small($this))
          || self.is_vertical_tabs($this)) {
          self.position_content($this);
        } else {
          self.position_content($this, false);
        }
      });
    },

    is_vertical_nav : function (el) {
      return /vertical-nav/i.test(el.data('section'));
    },

    is_horizontal_nav : function (el) {
      return /horizontal-nav/i.test(el.data('section'));
    },

    is_accordion : function (el) {
      return /accordion/i.test(el.data('section'));
    },

    is_horizontal_tabs : function (el) {
      return /^tabs$/i.test(el.data('section'));
    },

    is_vertical_tabs : function (el) {
      return /vertical-tabs/i.test(el.data('section'));
    },

    set_active_from_hash : function () {
      var hash = window.location.hash.substring(1),
          sections = $('[data-section]'),
          self = this;
      sections.each(function () {
        var section = $(this),
            settings = $.extend({}, self.settings, self.data_options(section));

        if (hash.length > 0 && settings.deep_linking) {
          var regions = section
            .children(self.settings.region_selector)
            .attr('style', '')
            .removeClass('active');

          var hash_regions = regions.map(function () {
              var content = $(self.settings.content_selector, this),
                  content_slug = content.data('slug');
              if (content_slug === hash) 
                return content;
            });

          $(hash_regions[0]).parent().addClass('active');
        }
      });
    },

    position_titles : function (section, off) {
      var self = this,
          titles = section
            .children(this.settings.region_selector)
            .map(function () {
              return $(this).children(self.settings.title_selector);
            }),
          previous_width = 0,
          previous_height = 0,
          self = this;

      if (typeof off === 'boolean') {
        titles.attr('style', '');

      } else {
        titles.each(function () {
          if (self.is_vertical_tabs(section)) {
            $(this).css('top', previous_height);
            previous_height += self.outerHeight($(this));
          } else {
            if (!self.rtl) {
              $(this).css('left', previous_width);
            } else {
              $(this).css('right', previous_width);
            }
            previous_width += self.outerWidth($(this));
          }
        });
      }
    },

    position_content : function (section, off) {
      var self = this,
          regions = section.children(self.settings.region_selector),
          titles = regions
            .map(function () {
              return $(this).children(self.settings.title_selector);
            }),
          content = regions
            .map(function () {
              return $(this).children(self.settings.content_selector);
            });

      if (typeof off === 'boolean') {
        content.attr('style', '');
        section.attr('style', '');
      } else {
        if (self.is_vertical_tabs(section)
            && !self.small(section)) {
          var content_min_height = 0,
              content_min_width = Number.MAX_VALUE,
              title_width = null;

          regions.each(function () {
            var region = $(this),
                title = region.children(self.settings.title_selector),
                content = region.children(self.settings.content_selector),
                content_width = 0;

            title_width = self.outerWidth(title);
            content_width = self.outerWidth(section) - title_width;
            if (content_width < content_min_width) {
              content_min_width = content_width;
            }

            // Increment the minimum height of the content region
            // to align with the height of the titles.
            content_min_height += self.outerHeight(title);

            // Set all of the inactive tabs to 'display: none'
            // The CSS sets all of the tabs as 'display: block'
            // in order to account for scrollbars when measuring the width
            // of the content regions.
            if (!$(this).hasClass('active')) {
              content.css('display', 'none');
            }
          });

          regions.each(function () {
            var content = $(this).children(self.settings.content_selector);
            content.css('minHeight', content_min_height);

            // Remove 2 pixels to account for the right-shift in the CSS
            content.css('maxWidth', content_min_width - 2);
          });

          // Adjust the outer section container width to match
          // the width of the title and content
          section.css('maxWidth', title_width + content_min_width);
        } else {
          regions.each(function () {
            var region = $(this),
                title = region.children(self.settings.title_selector),
                content = region.children(self.settings.content_selector);
            if (!self.rtl) {
              content
                .css({left: title.position().left - 1,
                  top: self.outerHeight(title) - 2});
            } else {
              content
                .css({right: self.position_right(title) + 1,
                  top: self.outerHeight(title) - 2});
            }
          });

          // temporary work around for Zepto outerheight calculation issues.
          if (typeof Zepto === 'function') {
            section.height(this.outerHeight($(titles[0])));
          } else {
            section.height(this.outerHeight($(titles[0])) - 2);
          }
        }
      }
    },

    position_right : function (el) {
      var self = this,
          section = el.closest(this.settings.section_selector),
          regions = section.children(this.settings.region_selector),
          section_width = el.closest(this.settings.section_selector).width(),
          offset = regions
            .map(function () {
              return $(this).children(self.settings.title_selector);
            }).length;
      return (section_width - el.position().left - el.width() * (el.index() + 1) - offset);
    },

    reflow : function (scope) {
      var scope = scope || document;
      $(this.settings.section_selector, scope).trigger('resize');
    },

    small : function (el) {
      var settings = $.extend({}, this.settings, this.data_options(el));
      if (this.is_horizontal_tabs(el)) {
        return false;
      }
      if (el && this.is_accordion(el)) {
        return true;
      }
      if ($('html').hasClass('lt-ie9')) {
        return true;
      }
      if ($('html').hasClass('ie8compat')) {
        return true;
      }
      return $(this.scope).width() < 768;
    },

    off : function () {
      $(this.scope).off('.fndtn.section');
      $(window).off('.fndtn.section');
      $(document).off('.fndtn.section')
    }
  };
}(Foundation.zj, this, this.document));

(function (factory) {
	if (typeof define === 'function' && define.amd) {
		// AMD. Register as anonymous module.
		define(['jquery'], factory);
	} else {
		// Browser globals.
		factory(jQuery);
	}
}(function ($) {

	var pluses = /\+/g;

	function raw(s) {
		return s;
	}

	function decoded(s) {
		return decodeURIComponent(s.replace(pluses, ' '));
	}

	function converted(s) {
		if (s.indexOf('"') === 0) {
			// This is a quoted cookie as according to RFC2068, unescape
			s = s.slice(1, -1).replace(/\\"/g, '"').replace(/\\\\/g, '\\');
		}
		try {
			return config.json ? JSON.parse(s) : s;
		} catch(er) {}
	}

	var config = $.cookie = function (key, value, options) {

		// write
		if (value !== undefined) {
			options = $.extend({}, config.defaults, options);

			if (typeof options.expires === 'number') {
				var days = options.expires, t = options.expires = new Date();
				t.setDate(t.getDate() + days);
			}

			value = config.json ? JSON.stringify(value) : String(value);

			return (document.cookie = [
				config.raw ? key : encodeURIComponent(key),
				'=',
				config.raw ? value : encodeURIComponent(value),
				options.expires ? '; expires=' + options.expires.toUTCString() : '', // use expires attribute, max-age is not supported by IE
				options.path    ? '; path=' + options.path : '',
				options.domain  ? '; domain=' + options.domain : '',
				options.secure  ? '; secure' : ''
			].join(''));
		}

		// read
		var decode = config.raw ? raw : decoded;
		var cookies = document.cookie.split('; ');
		var result = key ? undefined : {};
		for (var i = 0, l = cookies.length; i < l; i++) {
			var parts = cookies[i].split('=');
			var name = decode(parts.shift());
			var cookie = decode(parts.join('='));

			if (key && key === name) {
				result = converted(cookie);
				break;
			}

			if (!key) {
				result[name] = converted(cookie);
			}
		}

		return result;
	};

	config.defaults = {};

	$.removeCookie = function (key, options) {
		if ($.cookie(key) !== undefined) {
			// Must not alter options, thus extending a fresh object...
			$.cookie(key, '', $.extend({}, options, { expires: -1 }));
			return true;
		}
		return false;
	};

}));