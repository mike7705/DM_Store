<!doctype html>
<html lang="en">
{block 'head'}
{include 'head_bootstrap'}
{/block}

<body>
    <div class="wrapper">
        {block 'header'}
        {include 'header2'}
        {/block}
        <main class="page">
            <div class="container">
                {block 'content'}
                {$_modx->resource.content}
                {/block}
            </div>
        </main>
        {block 'footer'}
        {include 'footer'}
        {/block}
    </div>
    {block 'scripts'}
    {include 'popup'}
    {include 'js2'}
    {/block}
</body>

</html>