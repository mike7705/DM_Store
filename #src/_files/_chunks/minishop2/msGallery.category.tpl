{if $files?}
{foreach $files as $file}
{if $file['medium']?}
<div class="swiper-slide gallery-item"><img src="{$file['medium']}" style="max-width: 100%;"></div>
{/if}
{/foreach}
{/if}