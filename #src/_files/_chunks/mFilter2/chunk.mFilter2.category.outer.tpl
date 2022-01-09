<div id="mse2_mfilter" class="msearch2">
    {include 'pagetitle'}
    {include 'crumbs'}
    {$_modx->runSnippet('pdoMenu', [
    'parents' => 3,
    'level' => 1,
    'limit' => 4,
    'templates' => 3,
    'tplOuter' => '@INLINE <div class=" category__description mb-4 pl-2">
        <div class=" sub-categories mb-4 row border-start border-top">[[+wrapper]]</div>
    </div>',
    'tpl' => '@INLINE
    <div class="sub-category-item col col-xl-3 col-lg-4 col-md-6 border-right border-bottom">
        <div class="sub-category-wrapper d-flex pl-2">
            <div class="flex-shrink-0"><a href="[[+link]]" class="sub-category-link">
                    [[!getPageAssets?
                    &page_id=`[[+id]]`
                    &innerTpl=`category.assman`
                    &outerTpl=`category.assman.outer`
                    &is_image=`1`
                    &limit=`1`]]
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
    'sortby' => 'RAND()',
    'showLog' => 0,
    ])}
    <div class="row category__content ">

        <div class="col-12 co-md-3 order-lg-3 flex-sm column aside__left">
            <div class="row">
                <div class="aside__left-menu col col-sm-6 col-md-3 mb-4">
                    <div class="aside__left-menu-wrapper accordion accordion-flush" id="aside__left-resource-menu">
                        <div class="accordion-item">
                            <h6 class="accordion-header" id="resource-menu-heading">
                                <button class="accordion-button text-uppercase" type="button" data-bs-toggle="collapse"
                                    data-bs-target="#resource-menu-content" aria-expanded="false"
                                    aria-controls="resource-menu-content"><strong>
                                        <i class="icon-catalog pr-2"></i>Каталог</strong>
                                </button>
                            </h6>
                            <div id="resource-menu-content" class="accordion-collapse collapse show"
                                aria-labelledby="resource-menu-heading">
                                <div class="accordion-body">
                                    <div class="btn-group-vertical w-100">
                                        <div class="btn-group dropend w-100 " role="group" aria-label="Left menu item">
                                            <a type="button" class="btn btn-link" href="#">Телефоны</a>
                                            <button type="button"
                                                class="btn-caret btn dropdown-toggle dropdown-toggle-split "
                                                data-bs-toggle="dropdown" aria-expanded="false">
                                                <span class="visually-hidden"></span>
                                            </button>
                                            <ul class="dropdown-menu">
                                                <li><a href="" class="dropdown-item">Смартфоны</a></li>
                                                <li><a href="" class="dropdown-item">Кнопочные телефоны</a>
                                                </li>
                                                <li><a href="" class="dropdown-item">Аксессуары</a></li>
                                            </ul>
                                        </div>
                                        <div class="btn-group dropend w-100 " role="group" aria-label="Left menu item">
                                            <a type="button" class="btn btn-link" href="#">Аудиотехника</a>
                                            <button type="button"
                                                class="btn-caret btn dropdown-toggle dropdown-toggle-split "
                                                data-bs-toggle="dropdown" aria-expanded="false">
                                                <span class="visually-hidden"></span>
                                            </button>
                                            <ul class="dropdown-menu">
                                                <li><a href="" class="dropdown-item">Наушники</a></li>
                                                <li><a href="" class="dropdown-item">Акустика</a></li>
                                                <li><a href="" class="dropdown-item">Виниловые
                                                        проигрыватели</a></li>
                                            </ul>
                                        </div>
                                        <div class="btn-group dropend w-100 " role="group" aria-label="Left menu item">
                                            <a type="button" class="btn btn-link" href="#">Игры и
                                                приставки</a>
                                            <button type="button"
                                                class="btn-caret btn dropdown-toggle dropdown-toggle-split "
                                                data-bs-toggle="dropdown" aria-expanded="false">
                                                <span class="visually-hidden"></span>
                                            </button>
                                            <ul class="dropdown-menu">
                                                <li><a href="" class="dropdown-item">Консоли</a></li>
                                                <li><a href="" class="dropdown-item">Игры</a></li>
                                                <li><a href="" class="dropdown-item">Аксессуары</a></li>
                                            </ul>
                                        </div>
                                        <div class="btn-group dropend w-100 " role="group" aria-label="Left menu item">
                                            <a type="button" class="btn btn-link" href="#">Электротранспорт</a>
                                            <button type="button"
                                                class="btn-caret btn dropdown-toggle dropdown-toggle-split "
                                                data-bs-toggle="dropdown" aria-expanded="false">
                                                <span class="visually-hidden"></span>
                                            </button>
                                            <ul class="dropdown-menu">
                                                <li><a href="" class="dropdown-item">Электровелосипеды</a>
                                                </li>
                                                <li><a href="" class="dropdown-item">Электросамокаты</a>
                                                </li>
                                                <li><a href="" class="dropdown-item">Электротранспорт</a>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="aside__left-banner col col-sm-6 col-md-3 mb-4">
                    <div class="banner">
                        <div class="banner-top">
                            <div class="ratio ratio-1x1">
                                <div class="d-flex flex-column justify-content-center px-3 pt-5 text-center">
                                    <i class="mb-5" aria-hidden="true"><svg xmlns="http://www.w3.org/2000/svg"
                                            width="65.03" height="56" viewBox="0 0 65.03 56">
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
                <div class="aside__left-info-button-group col col-sm-6 col-md-3 mb-4">
                    <div class="list-group">
                        <a type="button" class="list-group-item list-group-item-action " aria-current="true">
                            <i class="bi bi-telephone-inbound pr-2 text-primary"></i>
                            <span class="lh-lg fs-6">Заказать звонок</span>
                        </a>
                        <a type="button" class="list-group-item list-group-item-action">
                            <i class="bi bi-envelope pr-2 text-primary"></i>
                            <span class="lh-lg fs-6">Задать вопрос</span>
                        </a>
                        <a type="button" class="list-group-item list-group-item-action">
                            <i class="bi bi-chat-left-quote pr-2 text-primary"></i>
                            <span class="lh-lg fs-6">Оставить отзыв</span>
                        </a>
                    </div>
                </div>
                <div class="aside__left-banner col col-sm-6 col-md-3 mb-4">
                    <div class="banner">
                        <div class="banner-top">
                            <div class="d-flex flex-column justify-content-center p-3 text-center">
                                <div class="banner-top-icon d-flex justify-center align-items-center ratio ratio-1x1">
                                    <div class="banner-top-icon-wrapper"><img src="http://placekitten.com/120" alt=""
                                            class="rounded-circle">
                                    </div>
                                </div>
                                <div class="banner-top-info">
                                    <div class="text-center upper muted mb-1">Ваш менеджер
                                    </div>
                                    <a class="lh-base" href="/company/staff/ekaterina-korotkovskikh/">Евгений
                                        Коротковских</a>
                                    <div class="lh-base text-secondary upper mt-1">+7 (000)
                                        000-00-00</div>
                                </div>
                            </div>
                        </div>
                        <div class="banner-bottom">
                            <a href="#" class="w-100 h-100 btn btn-primary-border-color rounded-0 border-0">Задать
                                вопрос</a>
                        </div>
                    </div>
                </div>
                <div class="col col-md-6 mb-5">
                    <div class="aside__left-side-news ">
                        <div class="side-news__title pb-4">
                            <a href="/blog/" class="font-medium">Статьи</a>
                        </div>
                        <div class="side-news__list pb-5">
                            <div class="side-news__item  p-3 d-flex justify-content-start border box-shadow">
                                <div class="side-news__img p-2 pr-3">
                                    <img src="http://placekitten.com/40" class="rounded-circle"
                                        style="width: 40px;height: 40px;object-fit: cover;">
                                </div>
                                <div class="side-news__item-info d-flex flex-column justify-content-start pt-2">
                                    <div class="side-news__item-date muted upper">5 Сентября 2019</div>
                                    <a class="side-news__item-link upper"
                                        href="/blog/obzory-tovarov/top-5-luchshikh-smartfonov/">Топ-5 лучших
                                        смартфонов</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="col co-md-9  order-lg-2 aside__content">
            <div class="category__filters mb-3">
                <div class="common__filters d-flex flex-wrap justify-content-between pt-3 ">
                    <div class="sort-filters form-group">
                        <label for="mse2_sort">{'mse2_sort' | lexicon}</label>
                        <select name="mse_sort" id="mse2_sort" class="form-select ">
                            <option class="sort" value="asc" data-sort="ms|price">По цене &uarr;</option>
                            <option class="sort" value="desc" data-sort="ms|price">По цене &darr;</option>
                            <option class="sort" value="asc" data-sort="ms|popular">По популярности &uarr;</option>
                            <option class="sort" value="desc" data-sort="ms|popular">По популярности &darr;</option>
                            <option class="sort" value="asc" data-sort="resource|pagetitle">По наименованию (А..Я)
                            </option>
                            <option class="sort" value="desc" data-sort="resource|pagetitle">По наименованию (Я..А)
                            </option>
                        </select>
                    </div>
                    <div class="quantity-filters form-group">
                        <label for="mse2_limit">{'mse2_limit' | lexicon}:</label>
                        <select name="mse_limit" id="mse2_limit" class="form-select">
                            {foreach [12, 24, 48, 96] as $v}
                            <option value="{$v}" {if $limit==$v} selected{/if}>{$v}</option>
                            {/foreach}
                        </select>
                    </div>
                    {if $tpls}
                    <div class="view-filters d-flex form-group">
                        <label for="mse2_tpl" class="pr-2 align-self-end mb-0">Вид:</label>
                        <div id="mse2_tpl" class="text-left align-self-end">
                            <a href="#" data-tpl="0" class="{$tpl0} text-secondary pr-2" title="плитка"><svg
                                    xmlns="http://www.w3.org/2000/svg" width="13" height="10" viewBox="0 0 13 10">
                                    <path
                                        d="M1566,603h1a1,1,0,0,1,0,2h-1A1,1,0,0,1,1566,603Zm5,0h1a1,1,0,0,1,0,2h-1A1,1,0,0,1,1571,603Zm5,0h1a1,1,0,0,1,0,2h-1A1,1,0,0,1,1576,603Zm-10,4h1a1,1,0,0,1,0,2h-1A1,1,0,0,1,1566,607Zm5,0h1a1,1,0,0,1,0,2h-1A1,1,0,0,1,1571,607Zm5,0h1a1,1,0,0,1,0,2h-1A1,1,0,0,1,1576,607Zm-10,4h1a1,1,0,0,1,0,2h-1A1,1,0,0,1,1566,611Zm5,0h1a1,1,0,0,1,0,2h-1A1,1,0,0,1,1571,611Zm5,0h1a1,1,0,0,1,0,2h-1A1,1,0,0,1,1576,611Z"
                                        transform="translate(-1565 -603)"></path>
                                </svg></a>
                            <a href="#" data-tpl="1" class="{$tpl1} text-secondary pr-2" title="список"><i
                                    class="svg  svg-inline-type" aria-hidden="true"><svg
                                        xmlns="http://www.w3.org/2000/svg" width="13" height="10" viewBox="0 0 13 10">
                                        <path
                                            d="M1594,603h1a1,1,0,0,1,0,2h-1A1,1,0,0,1,1594,603Zm5,0h6a1,1,0,0,1,0,2h-6A1,1,0,0,1,1599,603Zm-5,4h1a1,1,0,0,1,0,2h-1A1,1,0,0,1,1594,607Zm5,0h6a1,1,0,0,1,0,2h-6A1,1,0,0,1,1599,607Zm-5,4h1a1,1,0,0,1,0,2h-1A1,1,0,0,1,1594,611Zm5,0h6a1,1,0,0,1,0,2h-6A1,1,0,0,1,1599,611Z"
                                            transform="translate(-1593 -603)"></path>
                                    </svg></i></a>
                            <a href="#" data-tpl="2" class="{$tpl2} text-secondary pr-2" title="таблица"><svg
                                    xmlns="http://www.w3.org/2000/svg" width="13" height="10" viewBox="0 0 13 10">
                                    <path
                                        d="M1621.5,603h2a0.5,0.5,0,0,1,0,1h-2A0.5,0.5,0,0,1,1621.5,603Zm5,0h7a0.5,0.5,0,0,1,0,1h-7A0.5,0.5,0,0,1,1626.5,603Zm-5,3h2a0.5,0.5,0,0,1,0,1h-2A0.5,0.5,0,0,1,1621.5,606Zm5,0h7a0.5,0.5,0,0,1,0,1h-7A0.5,0.5,0,0,1,1626.5,606Zm-5,3h2a0.5,0.5,0,0,1,0,1h-2A0.5,0.5,0,0,1,1621.5,609Zm5,0h7a0.5,0.5,0,0,1,0,1h-7A0.5,0.5,0,0,1,1626.5,609Zm-5,3h2a0.5,0.5,0,0,1,0,1h-2A0.5,0.5,0,0,1,1621.5,612Zm5,0h7a0.5,0.5,0,0,1,0,1h-7A0.5,0.5,0,0,1,1626.5,612Z"
                                        transform="translate(-1621 -603)"></path>
                                </svg></a>
                        </div>
                    </div>
                    {/if}

                </div>
            </div>
            <div class="accordion d-none d-md-block" id="accordionFilter">
                <div class="accordion-item">
                    <h6 class="accordion-header" id="headingFilter">
                        <button class=" btn-sm py-2  btn-outline-primary accordion-button" type="button"
                            data-bs-toggle="collapse" data-bs-target="#collapseFilterBlock" aria-expanded="true"
                            aria-controls="collapseOne">
                            <i class="bi bi-funnel pr-2 pl-3"></i>
                            <span class="d-none d-md-inline-block">Фильтры</span>
                        </button>
                    </h6>
                    <div id="collapseFilterBlock" class="accordion-collapse collapse p-4"
                        aria-labelledby="headingFilter" data-bs-parent="#accordionFilter">
                        <div class="accordion-body">
                            <form action="{$_modx->resource.id | url}" method="post" id="mse2_filters" class="mb-3">
                                <div class="">
                                    {$filters}
                                </div>
                                {if $filters}
                                <div class="d-flex justify-content-between">
                                    <button type="reset" class="btn btn-secondary hidden">{'mse2_reset' |
                                        lexicon}</button>
                                    <button type="submit" class="btn btn-primary hidden">{'mse2_submit' |
                                        lexicon}</button>
                                </div>
                                {/if}
                            </form>
                        </div>
                    </div>
                </div>
            </div>
            <div id="mse2_selected_wrapper">
                <div id="mse2_selected">
                    {'mse2_selected' | lexicon}:<span></span>
                </div>
            </div>

            <div id="mse2_results" class="card-group border-1 border-start border-top mb-5"
                style="border-color: rgba(0, 0, 0, 0.125);">
                {$results}
            </div>

            <div class="mse2_pagination text-center mb-5">
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