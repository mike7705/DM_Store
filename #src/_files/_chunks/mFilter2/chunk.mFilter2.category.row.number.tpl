{var $key = $table ~ $delimeter ~ $filter}
<div class="col-md-5 me-auto px-0 mx-0">
    <label for="mse2_{$key}_{$idx}" class="d-flex align-items-center input-filter-label ">
        <input type="text" name="{$filter_key}" id="mse2_{$key}_{$idx}" value="{$value}"
            data-current-value="{$current_value}" class="form-control p-1 ml-1 input-filter-value filter-value" />
    </label>
</div>