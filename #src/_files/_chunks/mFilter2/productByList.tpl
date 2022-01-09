<div class="col-12">
    <div class="card position-relative border-right border-bottom outline-0 px-3 py-3">
        <div class="row g-0">
            <div class="col-md-3">
                <div class="card-img-top ratio ratio-1x1 position-relative">
                    <div class="card-image-top-wrapper">
                        <div class="card-image-top-content position-relative">
                            <div class="swiper-container product-images overflow-hidden">
                                <div class="swiper-wrapper product-images-wrapper ">
                                    [[!msGallery?
                                    &tpl=`tpl.msGallery.category`
                                    &product=`[[+id]]`
                                    &limit=`5`
                                    &filetype=`image`
                                    ]]
                                </div>
                                <div class="swiper-pagination  product-images-pagination d-flex"></div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-6 pl-3">
                <div class="card-body px-3 d-flex flex-column justify-content-between">
                    <h5 class="card-title"><a href="{$_modx->makeUrl($id)}">{$menutitle ?: $pagetitle}</a></h5>
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
                    <div class="d-flex">
                        <div class="item-quantity">
                        </div>
                        <div class="card-text text-left d-flex flex-column justify-content-between text-dark">
                            {$id | resource : 'content' | truncate : 200: '<br /><span class="text-secondary">читать
                                дальше...</span>': true : false}
                        </div>
                    </div>

                </div>
            </div>
            <form class="col-md-3 ms2_form card-footer-wrapper d-flex flex-column" method="post">
                <input type="hidden" name="id" value="{$id}">
                <div class="item-price mt-2 w-100">
                    {if $price > 0}
                    <div class="price w-100">
                        <strong>{$price | price_format | replace : " " : "&nbsp;"} &#8381;</strong>
                        {if $old_price > 0 && $old_price - $price > 1}
                        <small class="old_price text-muted"><s>{$old_price}&nbsp;&#8381;</s></small>
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
                <div class="input-group lh-sm">
                    <button class="btn btn-small btn-outline-primary" type="button">-</button>
                    <input type="text" class="form-control input-sm input-primary mb-0" placeholder="1">
                    <button class="btn btn-small btn-outline-primary" type="button">+</button>
                </div>

                <!--
                    <div class="col-4 bg-light flex-shrink-0 border-0 outline-0">
                        <input type="number" name="count" id="product_price"
                            class="form-control h-100 w-100 rounded-0 outline-0 border-0" value="1" />
                    </div>
                    <div class="col-8 flex-shrink-1 flex-grow-1">
                        <label for="product-actions-{$id}" class="form-label">Количество:</label>
                        <div class="btn-group" id="product-actions-{$id}">
                            <input type="number" class="fit-content" placeholder="">-->

                <div class="input-group"><button class="btn btn-sm btn-primary" type="submit" name="ms2_action"
                        value="cart/add">
                        В корзину
                    </button>
                </div>

                <!--</div>
                    </div>-->
            </form>

        </div>
        <div class="row g-0 pt-5">
            <div class="col-md-3 text-center">
                <button class="btn btn-small btn-outline-primary">
                    <i class="bi bi-eye pr-2 "></i><span class="d-none d-md-inline-block px-4 px-md-0">Быстрый
                        просмотр</span>
                </button>
            </div>
            <div class="col-md-9 pl-4">
                <div class="pr-4 d-inline-block">
                    <button class="btn btn-small btn-outline-primary">
                        <i class="bi bi-heart pr-2 "></i>
                        <span class="d-none d-md-inline-block px-4 px-md-0">Отложить</span>
                    </button>
                </div>
                <div class="pr-4 d-inline-block">
                    <button class="btn btn-small btn-outline-primary ml-3">
                        <i class="bi bi-reception-3 pr-2 "></i>
                        <span class="d-none d-md-inline-block px-4 px-md-0">Сравнить</span>
                    </button>

                </div>

            </div>
        </div>

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


    </div>
</div>