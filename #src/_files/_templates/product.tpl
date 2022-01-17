{extends 'template:BaseTemplate'}
{block 'header'}
[[!msFavorites.initialize]]
{parent}
{/block}
{block 'content'}
{include 'pagetitle'}
{include 'crumbs'}

{include 'product.content.fenom'}
{/block}
{block 'scripts'}
{include 'popup'}
<script src="assets/js/vendors.min.js"></script>
<script src="assets/js/app.min.js"></script>
<script>
    function reviewsGalleryInit(item = null) {
        if (item !== null) {
            //$(item).scrollingTabs();
            $(item).swipebox(swipeboxParams);
        } else {
            let slickReviews = document.querySelectorAll('.ec-message__files')
            for (let index = 0; index < slickReviews.length; index++) {
                let slickReview = slickReviews[index]
                //$(slickReview).scrollingTabs();
                $(slickReview).swipebox(swipeboxParams);
            }
        }

    }
    const navigation = new Navigation(document.getElementById("navigation"), {
        breakpoint: 767,
        submenuTrigger: "hover"
    });
    $(document).ready(function () {
        productTabs = $('.product-tabs').scrollingTabs();
        reviewsGalleryInit('.ec-message__files-link');
        //slickReviewsInit();
    })

</script>
{/block}