{'ecThreadRating' | snippet : ['tpl' => 'tpl.onlyStars.ecThreadRating', 'toPlaceholder' => 'raitingStars']}
{set $messagesCount = $_modx->runSnippet('ecMessagesCount', [])}
<div id="msProduct" class="row align-items-center border-bottom pb-4 border-light" itemtype="http://schema.org/Product"
    itemscope>
    <meta itemprop="name" content="{$_modx->resource.pagetitle}">
    <meta itemprop="description" content="{$_modx->resource.description ?: $_modx->resource.pagetitle}">
    <div class="col-12 col-md-6 position-relative">
        <div class="features top-menu pt-3 pl-3">
            <div class="features-top-wrapper">
                {if $new ?}<div class="feature feature-discount b-radius-2">Акция</div>{/if}
                {if $favorite?}<div class="feature feature-discount b-radius-2">Акция</div>{/if}
                {if $popular ?}<div class="feature feature-hit b-radius-2">Хит</div>{/if}
            </div>
        </div>
        {'!msGallery' | snippet : []}
    </div>
    <div class="col-12 col-md-6" itemtype="http://schema.org/AggregateOffer" itemprop="offers" itemscope>
        <div class="row">
            <div class="col-12 col-md-9 mb-4">
                <div class="d-grid gap-2 d-md-block">
                    <a class="btn btn-small btn-outline-secondary msfavorites fs-7  mt-3 mt-md-auto" data-click
                        data-data-list="default" data-data-type="resource" data-data-key="{$_modx->resource.id}">
                        <i class="bi bi-heart msfavorites-text-add" title="добавить в избранное"></i>
                        <span class="msfavorites-text-add">В&nbsp;избранное</span>
                        <i class="bi bi-heart-fill msfavorites-text-remove" title="удалить из избранного"></i>
                        <span class="d-md-none msfavorites-text-remove">Удалить</span>
                    </a>
                    {set $parentContainer = $_modx->runSnippet('pdoField',[
                    'topLevel' => 2,
                    'field' => 'id',
                    'contex' => 'web'
                    ])}
                    {'addComparison' | snippet : [
                    'list_id' => 193,
                    'list' => $parentContainer,
                    'id' => $_modx->resource.id,
                    'tpl' => 'tpl.product.Comparison.add',

                    ]}
                </div>
            </div>
            <div class="col-12 col-md-3 mb-4">
                {'raitingStars' | placeholder}
            </div>
        </div>
        <meta itemprop="category" content="{$_modx->resource.parent | resource: " pagetitle"}">
        <meta itemprop="offerCount" content="1">
        <meta itemprop="price" content="{$price | replace:" ":""}">
        <meta itemprop="lowPrice" content="{$price | replace:" ":""}">
        <meta itemprop="priceCurrency" content="RUR">
        <form class="form-horizontal ms2_form" method="post">
            <input type="hidden" name="id" value="{$_modx->resource.id}" />
            <div class="form-group row align-items-center">
                <label class="col-6 col-md-4 text-right text-md-left col-form-label py-2">{'ms2_product_article' |
                    lexicon}:</label>
                <div class="col-6 col-md-8 py-2">
                    {$article ?: '-'}
                </div>
            </div>
            <div class="form-group row align-items-center item-price">
                <label class="col-6 col-md-4 text-right text-md-left col-form-label py-2">{'ms2_product_price' |
                    lexicon}:</label>
                <div class="col-6 col-md-8 py-2 price">
                    <strong>{$price} {'ms2_frontend_currency' | lexicon}</strong>
                    {if $old_price != 0}
                    <span class="old_price ml-2 text-muted">{$old_price} {'ms2_frontend_currency' | lexicon}</span>
                    {/if}
                </div>
            </div>
            <div class="form-group row align-items-center">
                <label class="col-6 col-md-4 text-right text-md-left col-form-label py-2"
                    for="product_price">{'ms2_cart_count' | lexicon}:</label>
                <div class="col-6 col-md-8 py-2">
                    <div class="input-group col-md-6 __some-count-block" style="max-width: 150px;">
                        <button class="btn btn-small btn-outline-primary count-dec" type="button"
                            onclick="this.nextElementSibling.stepDown(); $(this).next().trigger('change');">-</button>
                        <input type="number" name="count"
                            class="form-control input-sm bg-light border-primary mb-0 text-center count-input" min="1"
                            placeholder="1" value="1">
                        <button class="btn btn-small btn-outline-primary count-inc" type="button"
                            onclick="this.previousElementSibling.stepUp(); $(this).prev().trigger('change');">+</button>
                    </div>
                </div>
            </div>
            <div class="form-group row align-items-center">
                <label class="col-6 col-md-4 text-right text-md-left col-form-label py-2">{'ms2_product_weight' |
                    lexicon}:</label>
                <div class="col-6 col-md-8 py-2">
                    {$weight} {'ms2_frontend_weight_unit' | lexicon}
                </div>
            </div>
            <div class="form-group row align-items-center">
                <label class="col-6 col-md-4 text-right text-md-left col-form-label py-2">{'ms2_product_made_in' |
                    lexicon}:</label>
                <div class="col-6 col-md-8 py-2">
                    {$made_in ?: '-'}
                </div>
            </div>
            {'msOptions' | snippet : [
            'options' => 'color,size',
            'tpl' => 'product.tpl.msOptions'
            ]}
            {'msProductOptions' | snippet : ['tpl' => 'product.tpl.msProductOptions']}
            <div class="form-group row align-items-center">
                <div class="col-12 offset-md-4 col-md-8 text-center text-md-left">
                    <div class="d-grid gap-2 d-md-block my-3 my-md-0">
                        <button type="submit" class="btn btn-primary" name="ms2_action" value="cart/add">
                            {'ms2_frontend_add_to_cart' | lexicon}
                        </button>
                    </div>

                </div>
            </div>
        </form>
    </div>
</div>
<div class="row">
    <div class="col-12 col-md-9">
        <div class="row">
            <div class="col-12 mt-3">
                <ul class="nav nav-tabs product-tabs border-0" role="tablist">
                    <li class="nav-item mr-3">
                        <a class="nav-link active" id="desc-tab" data-bs-toggle="tab" data-bs-target="#desc"
                            type="button" role="tab" aria-controls="home" aria-selected="true">Описание</a>
                    </li>
                    <li class="nav-item border border-light rounded-3 mr-3">
                        <a class="nav-link" id="stores-tab" data-bs-toggle="tab" data-bs-target="#stores" type="button"
                            role="tab" aria-controls="profile" aria-selected="false">Наличие</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" id="reviews-tab" data-bs-toggle="tab" data-bs-target="#reviews"
                            type="button" role="tab" aria-controls="reviews" aria-selected="false">Отзывы</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" id="buy-tab" data-bs-toggle="tab" data-bs-target="#buy" type="button"
                            role="tab" aria-controls="buy" aria-selected="false">Как&nbsp;купить</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" id="payment-tab" data-bs-toggle="tab" data-bs-target="#payment"
                            type="button" role="tab" aria-controls="payment" aria-selected="false">Оплата</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" id="delivery-tab" data-bs-toggle="tab" data-bs-target="#delivery"
                            type="button" role="tab" aria-controls="delivery" aria-selected="false">Доставка</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" id="custom-tab" data-bs-toggle="tab" data-bs-target="#custom" type="button"
                            role="tab" aria-controls="custom" aria-selected="false">Дополнительно</a>
                    </li>
                </ul>
                <div class="tab-content mb-5">
                    <div class="tab-pane active" id="desc" role="tabpanel" aria-labelledby="desc-tab">
                        {$_modx->resource.content}
                    </div>
                    <div class="tab-pane" id="stores" role="tabpanel" aria-labelledby="stores-tab">
                        <div class="fs-5 mb-4">
                            <h5>Наличие</h5>
                        </div>
                        <div class="clearfix"></div>
                        <div class="w-100 position-relative">
                            <div class="list-group w-100 fs-6">
                                <div class="list-group-item ">
                                    <p class="fs-5 pt-2">г. Москва, ул. Большая, 7/10</p>
                                    <p class="fs-6 text-muted">Телефон: +7 (111) 111-11-11
                                        <br>Режим работы: 8-12
                                        <br>E-mail: <a class="text-muted" href="mailto:test@test.ru">test@test.ru</a>
                                    </p>
                                </div>
                            </div>
                            <div class="item-stock w-25 position-absolute top-0 end-0 text-success p-3">
                                <i class="bi bi-record-fill"></i>
                                <span class="value font_sxs">Много</span>
                            </div>
                        </div>
                    </div>
                    <div class="tab-pane" id="reviews" role="tabpanel" aria-labelledby="reviews-tab">
                        <div class="fs-5 mb-4 d-flex justify-content-between">
                            <h5 class="">Отзывы {if $messagesCount}<span
                                    class="badge bg-secondary">{$messagesCount}</span>{/if}
                            </h5>
                            <div class="flex-grow-1"></div>
                            <div class="pe-4">{'raitingStars' | placeholder}</div>
                            <a class="btn btn-primary" data-bs-toggle="collapse" href="#ecForm" role="button"
                                aria-expanded="false" aria-controls="ecForm">
                                Оставить отзыв
                            </a>
                        </div>
                        <div id="ecForm" class="collapse bordered rounded-2 p-3 mb-5">
                            {'ecForm' | snippet : [
                            'tplForm' => 'tpl.product.ecForm',
                            'allowedFields' => 'user_name, user_email, rating, text, files',
                            'requiredFields' => 'user_name, user_email, text',
                            'files' => true,
                            'fileCount' => 5,
                            'fileSize' => 1000000
                            ]}
                        </div>
                        <div class="p-3 col-12 bordered rounded-2 mb-5">

                            {$_modx->runSnippet('!pdoPage@mfilter2', [
                            'loadModels'=>'easycomm',
                            'element' => 'ecMessages',
                            'tpl' => 'tpl.ecMessages.Row',
                            'tplEmpty' => 'tpl.product.easycomm.emptyResults',
                            'tplWrapper' => '@INLINE {$output}',
                            'showUnpublished' => 1,
                            'votingEnable' => 1,
                            'votingAllowGuest' => 1,
                            'showLog' => 0
                            ])}

                            {$_modx->getPlaceholder('page.nav')}
                        </div>
                    </div>
                    <div class="tab-pane" id="buy" role="tabpanel" aria-labelledby="buy-tab">
                        {194 | resource : 'content'}
                    </div>
                    <div class="tab-pane" id="payment" role="tabpanel" aria-labelledby="payment-tab">
                        {195 | resource : 'content'}
                    </div>
                    <div class="tab-pane" id="delivery" role="tabpanel" aria-labelledby="delivery-tab">
                        {196 | resource : 'content'}
                    </div>
                    <div class="tab-pane" id="custom" role="tabpanel" aria-labelledby="custom-tab"></div>
                </div>
            </div>
        </div>
    </div>
    <div class="col-12 col-md-3">
        <div class="row pt-3">
            <div class="aside__left-banner col-12 col-sm-6 col-md-12">
                <div class="banner">
                    <div class="banner-top">
                        <div class="ratio ratio-1x1">
                            <div class="d-flex flex-column justify-content-center px-3 pt-5 text-center">
                                <i class="mb-5" aria-hidden="true"><svg xmlns="http://www.w3.org/2000/svg" width="65.03"
                                        height="56" viewBox="0 0 65.03 56">
                                        <path class="cls-1 svg-opacity-01"
                                            d="M1486,357l48-18,5-1-38,24Zm53-16-11.16,31.481-18-7L1540,338Z"
                                            transform="translate(-1478.97 -330)"></path>
                                        <path data-name="Rounded Rectangle 1047" class="cls-2s"
                                            d="M1543.94,335.353c-0.01.008,0,.017-0.01,0.025v0.01l-0.03.07-14.95,37.907a0.991,0.991,0,0,1-1.13.591,0.935,0.935,0,0,1-.18-0.028l-13.28-4.882-10.62,10.614s-0.01.012-.01,0.017a0.041,0.041,0,0,0-.02.019h0c-0.04.037-.09,0.07-0.13,0.1a1.39,1.39,0,0,1-.17.1l-0.01,0a1.063,1.063,0,0,1-.13.038l-0.03.007a1.062,1.062,0,0,1-.15.044,0.214,0.214,0,0,1-.05-0.006,0.936,0.936,0,0,1-1-.837c-0.01-.026-0.02-0.05-0.03-0.078l-1.97-16.321-16.24-4.785a0.946,0.946,0,0,1-.41-0.2,0.191,0.191,0,0,1-.05-0.037,1.144,1.144,0,0,1-.15-0.174,1.156,1.156,0,0,1-.1-0.179c-0.01-.015-0.02-0.025-0.03-0.041s0-.05-0.01-0.075a0.9,0.9,0,0,1-.04-0.283c0-.037.01-0.072,0.01-0.108a1.02,1.02,0,0,1,.02-0.173c0.01-.032.03-0.054,0.04-0.084a0.829,0.829,0,0,1,.08-0.146c0.04-.054.07-0.107,0.11-0.153a0.965,0.965,0,0,1,.21-0.167c0.02-.014.05-0.03,0.07-0.042,0.04-.021.07-0.053,0.11-0.069l59.01-21.981a1,1,0,0,1,1.28.607,1.214,1.214,0,0,1,.04.266c0,0.025.01,0.048,0.01,0.074A1.047,1.047,0,0,1,1543.94,335.353Zm-31.64,32.936-2.8-1.027-3.24,7.062Zm-25.13-11.4,13.72,4.045,33.12-21.493Zm14.86,5.691,1.55,12.791,4.45-9.689a1,1,0,0,1,.26-0.408l27.88-24.848Zm8.86,3.061,16.55,6.085,12.69-32.152Zm-3.25-27.912a0.984,0.984,0,0,1-1.4-.053,1,1,0,0,1,.05-1.413l6.02-6.021a1,1,0,0,1,1.36,1.466Zm-17.89,31.57a1,1,0,0,1-.08,1.412l-9.02,8.041a1,1,0,0,1-1.33-1.5l9.02-8.04A1,1,0,0,1,1489.75,369.3Zm26.6,11.918a1,1,0,1,1,1.29,1.526l-3,3.015a1,1,0,1,1-1.29-1.526Z"
                                            transform="translate(-1478.97 -330)"></path>
                                    </svg></i>
                                <p class="text-center">Будьте в курсе наших акций и новостей</p>
                            </div>
                        </div>
                    </div>
                    <div class="banner-bottom">
                        <a href="#"
                            class="w-100 h-100 btn btn-transparent-border-color rounded-0 border-0">Подробнее</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<div class="mt-3">

</div>