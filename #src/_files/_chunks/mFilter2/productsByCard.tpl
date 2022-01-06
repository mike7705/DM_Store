<div class="col-12 col-sm-6 col-md-4 col-lg-3 ">
    <div class="card h-100 p-3 box-shadow">
        <div class="card-img-top ratio ratio-1x1 position-relative">
            <div class="card-image-top-wrapper">
                <div class="card-image-top-content">
                    <div class="swiper-container product-images overflow-hidden">
                        <div class="swiper-wrapper product-images-wrapper ">
                            [[!msGallery? &tpl=`tpl.msGallery.category` &product=`[[+id]]` &limit=`5`
                            &filetype=`image`]]
                        </div>
                        <div class="swiper-pagination  product-images-pagination d-flex w-100"></div>
                    </div>
                </div>
            </div>
        </div>
        <div class="card-body">
            <div class="card-raiting">
                <div class="rating rating_set">
                    <div class="rating__body">
                        <div class="rating__active"></div>
                        <div class="rating__items">
                            <input type="radio" class="rating__item" value="1" name="rating">
                            <input type="radio" class="rating__item" value="2" name="rating">
                            <input type="radio" class="rating__item" value="3" name="rating">
                            <input type="radio" class="rating__item" value="4" name="rating">
                            <input type="radio" class="rating__item" value="5" name="rating">
                        </div>
                    </div>
                    <div class="rating__value">3.6</div>

                </div>
            </div>
            <h5 class="card-title">{$menutitle ?: $pagetitle}</h5>
            <div class="card-text text-left d-flex flex-column justify-content-between">
                <div class="item-quantity">
                </div>
                <div class="item-price mt-2 w-100">
                    {if $price > 0}
                    <div class="price w-100">
                        {$price} - {$old_price}
                        {$price | price_format} &#8381;
                        {if $old_price > 0 && $price - $old_price > 1}
                        <span class="old_price">{$old_price}</span>
                    </div>
                    <div class="economy row text-center justify-center" style="width: 80%;">

                        <div class="col-3 bg-warning border border-warning rounded-start text-center">{100 * $old_price
                            /
                            $price - 100}</div>
                        <div class="col-9 border border-warning rounded-end">Экономия {$old_price - $price} &#8381;
                        </div>
                        {/if}
                    </div>
                    {/if}
                </div>
            </div>
        </div>
        <div class="card-footer row hidden bg-primary text-white border border-primary rounded-bottom">
            <div class="col-6 bg-light">
                <div class="input-group">
                    <input type="number" name="count" id="product_price" class="form-control h-100" value="1" />
                </div>
            </div>
            <div class="col-6 d-grid gap-1">
                <a href="{$id}" type="button" class="btn btn-primary">В корзину</a>
            </div>
        </div>
    </div>

</div>