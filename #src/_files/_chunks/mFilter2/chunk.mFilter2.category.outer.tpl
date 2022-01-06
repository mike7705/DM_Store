<div id="mse2_mfilter" class="msearch2">
    {include 'pagetitle'}
    {include 'crumbs'}
    {$_modx->runSnippet('pdoMenu', [
    'parents' => 3,
    'level' => 1,
    'templates' => 3,
    'tplOuter' => '@INLINE <div class="row category__description mb-4">
        <div class=" sub-categories mb-4">[[+wrapper]]</div>
    </div>',
    'tpl' => '@INLINE
    <div class="sub-category-item col col-xl-3 col-lg-4 col-md-6 ">
        <div class="sub-category-wrapper d-flex pl-2">
            <div class="flex-shrink-0"><a href="[[+link]]" class="sub-category-link">
                    <img src="https://placekitten.com/40" alt=""></a>
            </div>
            <div class="flex-grow-1 pl-3">
                <a href="[[+link]]" class="sub-category-link">[[+menutitle:empty=`[[+pagetitle]]`]]</a>
                {set $qt = $_modx->runSnippet("products_in_category",["parent"=> $id ])}
                {if $qt == 1}
                <p class="sub-category-description mb-0 pt-1">{$qt} товар</p>
                {elseif $qt == 2 OR $qt == 3 OR $qt == 4}
                <p class="sub-category-description mb-0 pt-1">{$qt} товара</p>
                {elseif $qt > 4}
                <p class="sub-category-description mb-0 pt-1">{$qt} товаров</p>
                {/if}
            </div>
        </div>
    </div>',
    'showLog' => 0,
    ])}
    <div class="row category__content ">

        <div class="col co-md-6 col-lg-3 col-xxl-2- order-lg-2 order-md-3 flex-sm column aside__left">
        </div>
        <div class="col co-md-6 col-lg-9 col-xxl-10- order-lg-3 order-md-2 aside__content">
            <div class="category__filters">
                <div class="common__filters d-flex flex-wrap justify-content-between pt-3">
                    <div class="sort-filters form-group">
                        <div class="btn-group sort-filter" id="">
                            <a id="mse2_sort" href="#"
                                class="btn btn-outline-primary btn-sm btn-filter btn-sort-filter dropdown-toggle sort [[+mse2_sort:is=``:then=`active`]]"
                                type="button" data-bs-toggle="dropdown" aria-expanded="false" data-sort="pagetitle"
                                data-dir="[[+mse2_sort:is=``:then=`desc`]]" data-default="desc" data-filter-default="По популярности
									(возрастание)">По популярности (возрастание)</a>
                            <a type="button"
                                class="reset-current-filter btn btn-outline-primary btn-sm rounded-end text-white active"
                                data-filter="#btn-sort-filter">
                                <i class="bi bi-x-lg"></i>
                            </a>
                            <ul class="dropdown-menu sort-filter-values p-0">
                                <li>
                                    <a class="dropdown-item lh-lg px-3 py-2 sort-filter-value" href="#"
                                        aria-current="true" data-sort="resource|publishedon" data-dir="asc"
                                        data-filter="#mse2_sort" data-filter-default="popular,asc"
                                        data-value="popular,asc">По популярности
                                        (возрастание)</a>
                                </li>
                                <li>
                                    <a class="dropdown-item lh-lg px-3 py-2 sort-filter-value" href="#"
                                        aria-current="true" data-sort="resource|publishedon" data-dir="asc"
                                        data-default="desc" data-filter="#mse2_sort">По популярности
                                        (убывание)</a>
                                </li>
                                <li>
                                    <a class="dropdown-item lh-lg px-3 py-2 sort-filter-value " href="#"
                                        data-filter="#mse2_sort">По алфавиту (А...Я)</a>
                                </li>
                                <li>
                                    <a class="dropdown-item lh-lg px-3 py-2 sort-filter-value " href="#"
                                        data-filter="#mse2_sort">По алфавиту (Я...А)</a>
                                </li>
                                <li>
                                    <a class="dropdown-item lh-lg px-3 py-2 sort-filter-value " href="#"
                                        data-filter="#mse2_sort">По цене (возрастание)</a>
                                </li>
                                <li>
                                    <a class="dropdown-item lh-lg px-3 py-2 sort-filter-value " href="#"
                                        data-filter="#mse2_sort">По цене (убывание)</a>
                                </li>
                            </ul>
                        </div>

                    </div>
                    <div class="quantity-filters form-group">
                        <label for="mse2_limit">{'mse2_limit' | lexicon}</label>
                        <select name="mse_limit" id="mse2_limit" class="form-control">
                            {foreach [10, 25, 50, 100] as $v}
                            <option value="{$v}" {if $limit==$v} selected{/if}>{$v}</option>
                            {/foreach}
                        </select>
                    </div>
                    {if $tpls}
                    <div class="view-filters">
                        <div id="mse2_tpl" class="col-md-6">
                            <a href="#" data-tpl="0" class="{$tpl0}">{'mse2_chunk_default' | lexicon}</a> /
                            <a href="#" data-tpl="1" class="{$tpl1}">{'mse2_chunk_alternate' | lexicon}</a>
                        </div>
                    </div>
                    {/if}

                </div>
            </div>
            <h3>{'mse2_filter_total' | lexicon} <span class="mse2_total">{$total ?: 0}</span></h3>
            <div class="row">
                <div id="mse2_sort" class="col-md-6">
                    {'mse2_sort' | lexicon}
                    <a href="#" data-sort="resource|publishedon"
                        data-dir="{if $sort == 'resource|publishedon:desc'}desc{/if}" data-default="desc" class="sort">
                        {'mse2_sort_publishedon' | lexicon} <span></span>
                    </a>
                </div>


            </div>
            <form action="{$_modx->resource.id | url}" method="post" id="mse2_filters">
                <div>
                    {$filters}
                </div>
                {if $filters}
                <div class="d-flex justify-content-between">
                    <button type="reset" class="btn btn-light hidden">{'mse2_reset' | lexicon}</button>
                    <button type="submit" class="btn btn-primary hidden">{'mse2_submit' | lexicon}</button>
                </div>
                {/if}
            </form>
            <div id="mse2_selected_wrapper">
                <div id="mse2_selected">
                    {'mse2_selected' | lexicon}:<span></span>
                </div>
            </div>

            <div id="mse2_results">
                {$results}
            </div>

            <div class="mse2_pagination">
                {'page.nav' | placeholder}
            </div>
            <div class="row category-description-text">
                <div class="col">
                    {$_modx->resource.content}
                </div>
            </div>
        </div>
    </div>

</div>