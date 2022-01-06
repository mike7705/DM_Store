<div class="slider-filter d-inline-block">
    <fieldset id="mse2_{$table ~ $delimeter ~ $filter}" class="fieldset">
        <div class="btn-group">
            <a href="#" id="mse2_{$table ~ '-' ~ $filter}-btn"
                class="btn btn-outline-primary btn-sm btn-filter dropdown-toggle filter_title" type="button"
                data-bs-toggle="dropdown" data-bs-auto-close="outside" aria-expanded="false">
                <strong_>{('mse2_filter_' ~ $table ~ '_' ~ $filter) | lexicon}</strong_>
            </a>
            <a href="#" type="button"
                class="reset-current-filter btn btn-outline-primary btn-sm rounded-end text-white "
                data-filter="{$table ~ $delimeter ~ $filter}">
                <i class="bi bi-x-lg"></i>
            </a>
            <div class="dropdown-menu slider-filter-values pt-3 justify-center"
                aria-labelledby="mse2_{$table ~ '-' ~ $filter}-btn">
                <div class="mse2_number_slider my-2 col-10 offset-1" data-filter="mse2_{$table ~ $delimeter ~ $filter}">
                </div>
                <div class="mse2_number_inputs row col-10 offset-1 justify-center">
                    <div class="row justify-content-between">
                        {$rows}
                    </div>
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