<?php
    //load file layout.php
    $this->layoutPath = "Layout.php";
 ?>
<div class="col-md-12">
<div style="display:flex;height: 30px;justify-content: space-between;align-items: center;margin-bottom: 30px;">
            <div></div>
            <h2 style="text-align: center">Admin</h2>
            <a href="index.php?controller=users&action=create" class="btn btn-primary">Add user</a>
    </div>

    <div class="panel panel-primary">
        <div class="panel-heading">List User</div>
        <div class="panel-body">
            <table class="table table-bordered table-hover">
                <tr>
                    <th>Họ và tên</th>
                    <th>Email</th>
                    <th style="width:120px;">Chức năng</th>
                </tr>
                <?php foreach($data as $rows): ?>
                <tr>
                    <td><?php echo $rows->name ?></td>
                    <td><?php echo $rows->email ?></td>
                    <td style="text-align:center;">
                        <a href="index.php?controller=users&action=update&id=<?php echo $rows->id; ?>">
                            <img style="width: 18px" src="../assets/frontend/images/edit.png" alt="update">
                        </a>&nbsp;
                        <a href="index.php?controller=users&action=delete&id=<?php echo $rows->id; ?>" onclick="return window.confirm('Are you sure?');">
                            <img style="width: 18px" src="../assets/frontend/images/delete.png" alt="delete">
                        </a>
                    </td>
                </tr>
                <?php endforeach; ?>
            </table>
            <style type="text/css">
                .pagination{padding:0px; margin:0px;}
            </style>
            <ul class="pagination">
                <li class="page-item disabled"><a href="#" class="page-link">Trang</a></li>
                <?php for($i = 1; $i <= $numPage; $i++): ?>
                <li class="page-item"><a href="index.php?controller=users&page=<?php echo $i; ?>" class="page-link"><?php echo $i; ?></a></li>
                <?php endfor; ?>
            </ul>
        </div>
    </div>
</div>
