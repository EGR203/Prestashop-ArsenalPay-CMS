{*
* ArsenalPay Payment Module v1.0.2
* 
* NOTICE OF LICENSE
*
* This source file is subject to the Academic Free License (AFL 3.0)
* that is bundled with this package in the file LICENSE.txt.
* It is also available through the world-wide-web at this URL:
* http://opensource.org/licenses/afl-3.0.php
* If you did not receive a copy of the license and are unable to
* obtain it through the world-wide-web, please send an email
* to license@prestashop.com so we can send you a copy immediately.
*
* DISCLAIMER
*
* Do not edit or add to this file if you wish to upgrade PrestaShop to newer
* versions in the future. If you wish to customize PrestaShop for your
* needs please refer to http://www.prestashop.com for more information.
*
*  @author     ArsenalPay Dev. <pay@arsenalpay.ru>
*  @copyright  Copyright (c) 2014-2017 ArsenalPay (http://www.arsenalpay.ru)
*  @license    http://opensource.org/licenses/afl-3.0.php  Academic Free License (AFL 3.0)
*}

{capture name=path}
	<a href="{$link->getPageLink('order', true, NULL, NULL)|escape:'html':'UTF-8'}" title="{l s='Go back to your shopping cart' mod='arsenalpay'}">{l s='Your shopping cart' mod='arsenalpay'}</a><span class="navigation-pipe">{$navigationPipe}</span>{l s='Arsenal Pay payment' mod='arsenalpay'}
{/capture}

{assign var='current_step' value='payment'}
{include file="$tpl_dir./order-steps.tpl"}

{if $nbProducts <= 0}
	<p class="warning">{l s='Your shopping cart is empty.' mod='arsenalpay'}</p>
{else}

<iframe {$frame_params} src="{$frame_url}?src={$srcc}&t={$ap_token}&n={$order_id}&a={$total}&s={$other_code}&frame={$frame_mode}&css={$css}"></iframe>	

{/if}
