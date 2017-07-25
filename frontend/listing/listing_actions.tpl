{* Listing actions *}
{block name='frontend_listing_actions_top'}
    <div data-listing-actions="true"
         class="ceca listing--actions is--rounded{block name='frontend_listing_actions_class'}{/block}">

        {* Filter action button *}
        {block name="frontend_listing_actions_filter"}
            {include file="frontend/listing/actions/action-filter-button.tpl"}
        {/block}

        {* Order by selection *}
        {block name='frontend_listing_actions_sort'}
            {include file="frontend/listing/actions/action-sorting.tpl"}
        {/block}

        {* Filter options *}
        {block name="frontend_listing_actions_filter_options"}
            {include file="frontend/listing/actions/action-filter-panel.tpl"}
        {/block}

        {* Listing pagination *}
        {block name='frontend_listing_actions_paging'}
            {include file="frontend/listing/actions/action-pagination.tpl"}
        {/block}

        {block name="frontend_listing_actions_close"}{/block}
    </div>
{/block}
