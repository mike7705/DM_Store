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
                {block 'content'}
                <div class="container">
                    {$_modx->resource.content}
                </div>
                {/block}
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