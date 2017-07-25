{extends file='parent:frontend/index/index.tpl'}
{* Main content *}
{block name='frontend_index_content'}
    <div class="content content--home">
        {* Promotion *}
        {block name='frontend_home_index_promotions'}
            {if $hasEmotion}
                <div class="content--emotions ceca">
                    {foreach $emotions as $emotion}
                        {if $hasEscapedFragment}
                            {if 0|in_array:$emotion.devicesArray}
                                <div class="emotion--fragment">
                                    {action module=widgets controller=emotion action=index emotionId=$emotion.id controllerName=$Controller}
                                </div>
                            {/if}
                        {else}
                            <div class="emotion--wrapper"
                                 data-controllerUrl="{url module=widgets controller=emotion action=index emotionId=$emotion.id controllerName=$Controller}"
                                 data-availableDevices="{$emotion.devices}">
                            </div>
                        {/if}
                    {/foreach}
                </div>
            {/if}
        {/block}
    </div>
{/block}

