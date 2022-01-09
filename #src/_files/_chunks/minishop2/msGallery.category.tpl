{if $files?}
{foreach $files as $file}
{if $file['product_mini']?}
<div class="swiper-slide gallery-item  text-center"><img src="{$file['product_mini']}" style="max-width: 100%;"></div>
{/if}
{/foreach}
{/if}