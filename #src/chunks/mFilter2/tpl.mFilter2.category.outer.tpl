<div  id="mse2_mfilter" class="msearch2">
    {include 'pagetitle'}
	{include 'crumbs'}
		<div class="row category__description mb-4">
			<div class=" sub-categories mb-4">
				<div class="sub-category-item col col-xl-3 col-lg-4 col-md-6 ">
					<div class="sub-category-wrapper d-flex pl-2">
						<div class="flex-shrink-0">
							<a href="#" class="sub-category-link"><img src="https://placekitten.com/40"
									alt=""></a>
						</div>
						<div class="flex-grow-1 pl-3">
							<a href="#" class="sub-category-link">Смартфоны</a>
							<p class="sub-category-description mb-0 pt-1">6 товаров</p>
						</div>
					</div>
				</div>
				<div class="sub-category-item col col-xl-3 col-lg-4 col-md-6 ">
					<div class="sub-category-wrapper d-flex pl-2">
						<div class="flex-shrink-0">
							<a href="#" class="sub-category-link"><img src="https://placekitten.com/40"
									alt=""></a>
						</div>
						<div class="flex-grow-1 pl-3">
							<a href="#" class="sub-category-link">Кнопочные телефоны</a>
							<p class="sub-category-description mb-0 pt-1">6 товаров</p>
						</div>
					</div>
				</div>
				<div class="sub-category-item col col-xl-3 col-lg-4 col-md-6 ">
					<div class="sub-category-wrapper d-flex pl-2">
						<div class="flex-shrink-0">
							<a href="#" class="sub-category-link"><img src="https://placekitten.com/40"
									alt=""></a>
						</div>
						<div class="flex-grow-1 pl-3">
							<a href="#" class="sub-category-link">Аксессуары</a>
							<p class="sub-category-description mb-0 pt-1">6 товаров</p>
						</div>
					</div>
				</div>
			</div>
			<div class="row category-description-text">
				<div class="col">
					{$content}
				</div>
			</div>
		</div>
    <div class="row">
        <div class="col-md-3">
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
    
            <br/><br/>
            <div class="form-group">
                <label for="mse2_limit">{'mse2_limit' | lexicon}</label>
                <select name="mse_limit" id="mse2_limit" class="form-control">
                    {foreach [10, 25, 50, 100] as $v}
                        <option value="{$v}"{if $limit == $v} selected{/if}>{$v}</option>
                    {/foreach}
                </select>
            </div>
        </div>
        <div class="col-md-9">
            <h3>{'mse2_filter_total' | lexicon} <span id="mse2_total">{$total ?: 0}</span></h3>
            <div class="row">
                <div id="mse2_sort" class="col-md-6">
                    {'mse2_sort' | lexicon}
                    <a href="#" data-sort="resource|publishedon"
                       data-dir="{if $sort == 'resource|publishedon:desc'}desc{/if}" data-default="desc" class="sort">
                        {'mse2_sort_publishedon' | lexicon} <span></span>
                    </a>
                </div>
    
                {if $tpls}
                    <div id="mse2_tpl" class="col-md-6">
                        <a href="#" data-tpl="0" class="{$tpl0}">{'mse2_chunk_default' | lexicon}</a> /
                        <a href="#" data-tpl="1" class="{$tpl1}">{'mse2_chunk_alternate' | lexicon}</a>
                    </div>
                {/if}
            </div>
    
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
        </div>
    </div>
</div>
