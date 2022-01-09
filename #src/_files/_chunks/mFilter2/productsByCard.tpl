<div class="col-12 col-sm-6 col-md-4 col-lg-3">
    <div class="card h-100 position-relative border-1 rounded-bottom outline-0">
        <div class="features top-menu pt-3 pl-3">
            <div class="features-top-wrapper">
                {if $new ?}<div class="feature feature-discount b-radius-2">Акция</div>{/if}
                {if $favorite?}<div class="feature feature-discount b-radius-2">Акция</div>{/if}
                {if $popular ?}<div class="feature feature-hit b-radius-2">Хит</div>{/if}
            </div>
        </div>
        <div class="features right-menu pt-3 pr-3">
            <ul class="features-right-wrapper">
                <li><a class="b-radius-3 msfavorites" data-click data-data-list="default" data-data-type="resource"
                        data-data-key="{$id}" href="[[~192]]"><i class="bi bi-heart msfavorites-text-add"
                            title="добавить в избранное"></i><i class="bi bi-heart-fill msfavorites-text-remove"
                            title="удалить из избранного"></i></a>
                </li>
                <li><a class="b-radius-3" href="#"><i class="icon-compare"></i></a></li>
                <!--<li><a class="b-radius-3" href="#"><i class="icon-buy-at-click"></i></a></li>-->
                <li><a class="b-radius-3" href="#"><i class="icon-quick-preview"></i></a></li>
            </ul>
        </div>
        <div class="card-img-top ratio ratio-1x1 position-relative">
            <div class="card-image-top-wrapper">
                <div class="card-image-top-content p-3 position-relative">
                    <div class="swiper-container product-images overflow-hidden">
                        <div class="swiper-wrapper product-images-wrapper ">
                            [[!msGallery? &tpl=`tpl.msGallery.category` &product=`[[+id]]` &limit=`5`
                            &filetype=`image`]]
                        </div>
                        <div class="swiper-pagination  product-images-pagination d-flex"></div>
                    </div>
                </div>
            </div>
        </div>
        <div class="card-body px-3 d-flex flex-column justify-content-between">
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
            <h5 class="card-title"><a href="{$_modx->makeUrl($id)}">{$menutitle ?: $pagetitle}</a></h5>
            <div class="card-text text-left d-flex flex-column justify-content-between">
                <div class="item-quantity">
                </div>
                <div class="item-price mt-2 w-100">
                    {if $price > 0}
                    <div class="price w-100">
                        <strong>{$price | price_format | replace : " " : "&nbsp;"} &#8381;</strong>
                        {if $old_price > 0 && $old_price - $price > 1}
                        <small class="old_price text-muted"><s>{$old_price}</s></small>
                    </div>
                    <div class="economy row mx-0 px-0 text-center justify-content-start">
                        {set $a = 100 * $old_price / $price - 100}
                        <div class="col-3 bg-warning border border-warning rounded-start text-center percent">
                            {$a | ereplace : '/\.\d+/' : ''}&nbsp;%</div>
                        <div class="col-9 border border-warning rounded-end abs">Экономия
                            {$old_price | replace : " " : "" - $price | replace : " " : ""} &#8381;
                        </div>
                        {/if}
                    </div>
                    {/if}
                </div>
            </div>
        </div>
        <div class="card-footer px-0 position-absolute top-100 ratio ratio-5x1 bg-light">
            <form class="ms2_form card-footer-wrapper d-flex flex-nowrap border-0 outline-0 p-0" method="post">
                <input type="hidden" name="id" value="{$id}">
                <div class="col-12 col-md-6 h-100">
                    <div class="input-group __some-count-block mb-3 px-5 px-md-0 col-12 col-md-6 h-100 rounded-0">
                        <button class="btn btn-small btn-outline-warning count-dec" type="button"
                            onclick="this.nextElementSibling.stepDown(); $(this).next().trigger('change');"
                            style="border-top-left-radius: 0;"><i class="bi bi-dash-lg"></i></button>
                        <input type="number" name="count"
                            class="form-control input-sm bg-light border-warning mb-0 text-center count-input h-100"
                            min="1" placeholder="1" value="1">
                        <button class="btn btn-small btn-outline-warning count-inc rounded-0" type="button"
                            onclick="this.previousElementSibling.stepUp(); $(this).prev().trigger('change');"><i
                                class="bi bi-plus-lg"></i></button>
                    </div>
                </div>
                <div class="col-12 col-md-6 flex-shrink-1 flex-grow-1">
                    <button class="btn btn-primary h-100 w-100 rounded-0" type="submit" name="ms2_action"
                        value="cart/add" style="border-bottom-right-radius: 0.25rem !important;">
                        В корзину
                    </button>
                </div>
            </form>

        </div>
    </div>

</div>