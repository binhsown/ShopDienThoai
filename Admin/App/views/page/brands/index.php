<div class="table-wrapper">
    <div class="table__header">
        <h1 class="table__title">Brands</h1>
        <div class="table__right">
            <a href="brand/add" class="btn btn--add">
                <i class="fa-solid fa-plus"></i>
                Add Brand
            </a>
        </div>
    </div>
    <div class="table-container">
        <table class="content-table">
            <thead>
                <tr>
                    <th class="width-100">ID</th>
                    <th>Name</th>
                    <th class="width-200">Action</th>
                </tr>
            </thead>
            <tbody>
                <?php
                $number = 1;
                foreach ($brands as $brand) {

                ?>
                    <tr>
                        <td class="width-100 text-center">
                            <?php
                            echo $number;
                            $number++;
                            ?>
                        </td>
                        <td class="text-center"> <?php echo $brand['name'] ?> </td>
                        <td class="width-200 text-center">
                            <a href="brand/edit/<?php echo $brand['id'] ?>" class="btn-action btn-action--edit">
                                <i class="fa-solid fa-pen"></i>
                            </a>
                            <a class="btn-action btn-action--delete" onclick="handleNotification(<?php echo $brand['id'] ?>, 'Bạn có chắc muốn xóa hãng sản phẩm này ?','brand/delete');">
                                <i class="fa-solid fa-trash"></i>
                            </a>
                        </td>
                    </tr>
                <?php } ?>
            </tbody>
        </table>
    </div>
</div>