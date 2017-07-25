<?php

namespace Shopware\Themes\TestTheme;

use Shopware\Components\Form as Form;

class Theme extends \Shopware\Components\Theme
{
    protected $extend = 'Responsive';

    protected $name = <<<'SHOPWARE_EOD'
TestTheme
SHOPWARE_EOD;

    protected $description = <<<'SHOPWARE_EOD'
Text
SHOPWARE_EOD;

    protected $author = <<<'SHOPWARE_EOD'
towfour
SHOPWARE_EOD;

    protected $license = <<<'SHOPWARE_EOD'
MIT
SHOPWARE_EOD;

    protected $injectBeforePlugins =  true;

    protected $css = array(
        'src/css/jquery-ui.css'
    );

    protected $javascript = array(
        'src/js/jquery-ui.min.js',
        'src/js/scroll-to-top.js',
        'src/js/override.js',
        'src/js/init-jqi.js'
    );

    public function createConfig(Form\Container\TabContainer $container)
    {
    }
}