{var $key = $table ~ $delimeter ~ $filter}
<div class="checkbox-filter">
    <fieldset id="mse2_{$key}" class="btn-group fieldset">
        <a href="#" id="mse2_{$key}_btn" class="btn btn-outline-primary btn-sm btn-filter dropdown-toggle filter_title"
            type="button" data-bs-toggle="dropdown" aria-expanded="false" data-bs-auto-close="outside">
            <strong_>{('mse2_filter_' ~ $table ~ '_' ~ $filter) | lexicon}</strong_>
        </a>
        <a href="#" type="button" class="reset-current-filter btn btn-outline-primary btn-sm rounded-end text-white "
            data-filter="{$key}">
            <i class="bi bi-x-lg"></i>
        </a>
        <div class="dropdown-menu checkbox-filter-values pr-3">
            {$rows}
            <div>
                <hr class="dropdown-divider border-secondary">
            </div>
            <div>
                <a class="dropdown-item disabled" href="#" tabindex="-1" aria-disabled="true">Выбрано: <span
                        class="mse2_total">{$total ?:''}</span> </a>
            </div>
        </div>
    </fieldset>
</div>