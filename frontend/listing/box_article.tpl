{block name="frontend_listing_box_article_includes"}

    {if $productBoxLayout == 'minimal'}
        {include file="frontend/listing/product-box/box-custom.tpl" productBoxLayout="custom"}

    {elseif $productBoxLayout == 'image'}
        {include file="frontend/listing/product-box/box-big-image.tpl" productBoxLayout="image"}

    {elseif $productBoxLayout == 'slider'}
        {include file="frontend/listing/product-box/box-product-slider.tpl" productBoxLayout="slider"}

    {elseif $productBoxLayout == 'emotion'}
        {include file="frontend/listing/product-box/box-emotion.tpl" productBoxLayout="emotion"}
    {elseif $productBoxLayout == 'list'}
        {include file="frontend/listing/product-box/box-list.tpl"}

    {else}
        {block name="frontend_listing_box_article_includes_additional"}
            {include file="frontend/listing/product-box/box-custom.tpl" productBoxLayout="custom"}
        {/block}
    {/if}
{/block}