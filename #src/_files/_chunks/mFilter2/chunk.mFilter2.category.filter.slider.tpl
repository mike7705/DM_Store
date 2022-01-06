<div class="slider-filter">
    <fieldset id="mse2_{$table ~ $delimeter ~ $filter}" class="fieldset">
        <div class="btn-group">
            <a href="#" id="mse2_{$table ~ $delimeter ~ $filter}_btn"
                class="btn btn-outline-primary btn-sm btn-filter dropdown-toggle filter_title" type="button"
                data-bs-toggle="dropdown" aria-expanded="false" data-bs-auto-close="outside">
                <strong_>{('mse2_filter_' ~ $table ~ '_' ~ $filter) | lexicon}</strong_>
            </a>
            <a href="#" type="button"
                class="reset-current-filter btn btn-outline-primary btn-sm rounded-end text-white "
                data-filter="{$table ~ $delimeter ~ $filter}">
                <i class="bi bi-x-lg"></i>
            </a>
            <div class="dropdown-menu slider-filter-values pt-3">
                <div class="mse2_number_slider py-2"></div>
                <div class="mse2_number_inputs row">
                    {$rows}
                </div>
                <div>
                    <hr class="dropdown-divider border-secondary">
                </div>
                <div><a class="dropdown-item disabled" href="#" tabindex="-1" aria-disabled="true">Выбрано: <span
                            class="mse2_total">{$total ?:''}</span> </a>
                </div>
                </ul>
            </div>
    </fieldset>
</div>