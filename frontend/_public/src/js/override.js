/**
 * Created by mark on 13.06.17.
 */
$.overridePlugin('swSearch', {
    showResult: function() {
        var me = this;

        me.superclass.showResult.apply(this, arguments);

        me.$searchField.parents('form').css('z-index', 9999);
        me.$results.css('z-index', 9999);

        $.overlay.open();
    },

    closeResult: function() {
        var me = this;
        me.superclass.closeResult.apply(this, arguments);

        me.$searchField.parents('form').removeAttr('style');
        me.$results.removeAttr('style');

        $.overlay.close();
    }
});

$.overridePlugin('swDropdownMenu', {
    onClickMenu: function (event) {
        var me = this;

        me.superclass.onClickMenu.apply(this, arguments);

        me.$el.parents("nav").css('z-index', 9999);

        $.overlay.open();
    },

    destroy: function () {
        var me = this;

        me.superclass.destroy.apply(this, arguments);
        $.overlay.close();
    }

});

$.overridePlugin('swAddArticle', {

});

$.overridePlugin('swCollapseCart', {
    onArticleAdded: function (event, plugin, response) {
        var me = this;

        me.superclass.onArticleAdded.apply(this, arguments);

        timeOut=setTimeout('topFunction()',0);
        if (document.body.scrollTop!=0 || document.documentElement.scrollTop!=0){
            window.scrollBy(0,-50);
            timeOut=setTimeout('topFunction()',10);
        }
        else clearTimeout(timeOut);
    },

    registerEvents: function () {
        var me = this;

        me.$el.on(me.getEventName('click'), me.opts.removeItemSelector, $.proxy(me.onRemoveButtonClick, me));
        me.$el.on(me.getEventName('click touchstart'), me.opts.offcanvasCloseElSelector, $.proxy(me.onCloseButtonClick, me));

        $.subscribe('plugin/swAddArticle/onAddArticle', $.proxy(me.onArticleAdded, me));
        $.subscribe('plugin/swAddArticle/onBeforeAddArticle', $.proxy(me.onBeforeAddArticle, me));

        me._on('.container--ajax-cart,' + me.opts.triggerElSelector, 'mousemove', $.proxy(me.onMouseHover, me));
        me._on(me._$triggerEl, 'mouseenter touchstart', $.proxy(me.onMouseEnter, me));
        me._on(me._$triggerEl, 'mouseleave', $.proxy(me.onMouseLeave, me));
        me._on(me._$triggerEl, 'click', $.proxy(me.onClick, me));
        me._on(me.$el, 'mouseleave', $.proxy(me.onMouseLeave, me));
        $('.container--ajax-cart,' + me.opts.triggerElSelector).hover(
            $.proxy(me.onMouseHoverStart, me),
            $.proxy(me.onMouseHoverEnd, me)
        );

        $.publish('plugin/swCollapseCart/onRegisterEvents', [ me ]);
    }
});
