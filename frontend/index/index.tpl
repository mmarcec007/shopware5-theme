{extends file='parent:frontend/index/index.tpl'}
{block name="frontend_index_page_wrap"}
    {$smarty.block.parent}
    <button onclick="topFunction()" id="myBtn" title="Go to top">Top</button>
{/block}

{block name='frontend_index_container_ajax_cart'}
    <div class="container--ajax-cart" data-collapse-cart="true"{if $theme.offcanvasCart} data-displayMode=""{/if}></div>
{/block}