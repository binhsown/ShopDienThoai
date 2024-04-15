<div class="container pt-3">
    <div class="row">
        <div class="col-lg-4">
            <ul class="list-group category-list">
                <h5>Danh mục</h5>
                <?php foreach ($categories as $category) { ?>
                    <li class="list-group-item">
                        <a href="?url=product/ByCate/<?php echo $category['id'] ?>">
                            <?php echo $category['name'] ?>
                            <i class="fa-solid fa-chevron-right"></i>
                        </a>
                    </li>
                <?php } ?>
                <li class="list-group-item">
                    <a href="?url=product">
                        Xem tất cả
                        <i class="fa-solid fa-chevron-right"></i>
                    </a>
                </li>
            </ul>
        </div>
        <div class="col-12 col-lg-8">
            <div>
                <div id="carouselExampleControls" class="carousel slide" data-bs-ride="carousel">
                    <div class="carousel-inner">
                        <div class="carousel-item active">
                            <img src="./Customer/public/img/banner.jpg" class="d-block w-100" alt="...">
                        </div>
                        <div class="carousel-item">
                            <img src="./Customer/public/img/banner.jpg" class="d-block w-100" alt="...">
                        </div>
                    </div>
                    <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleControls" data-bs-slide="prev">
                        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                        <span class="visually-hidden">Previous</span>
                    </button>
                    <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleControls" data-bs-slide="next">
                        <span class="carousel-control-next-icon" aria-hidden="true"></span>
                        <span class="visually-hidden">Next</span>
                    </button>
                </div>
            </div>
        </div>

    </div>
</div>


<div class="banner pt-3">
    <div class="container">
        <div class="banner_container">
            <div class="row">
                <div class="col-12 col-lg-4">
                    <img class="img-fluid" src="./Customer/public/img/qc-1.png" alt="">
                </div>
                <div class="col-12 col-lg-4">
                    <img class="img-fluid" src="./Customer/public/img/qc-2.png" alt="">
                </div>
                <div class="col-12 col-lg-4">
                    <img class="img-fluid" src="./Customer/public/img/qc-3.png" alt="">
                </div>
            </div>
        </div>
    </div>
</div>

<!-- Product Nổi bật-->
<?php require_once './Customer/App/views/partials/product-hot.php' ?>

<?php if (mysqli_num_rows($productViewCount) > 0) { ?>
    <!-- Product Hot -->
    <?php require_once './Customer/App/views/partials/product-viewCount.php' ?>
<?php } ?>

<!-- Product new -->
<?php require_once './Customer/App/views/partials/product-new.php' ?>