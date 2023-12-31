<%@ tag language="java" pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ attribute name="content" fragment="true"%>


<!doctype html>
<html class="no-js" lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Admin</title>
    <meta name="description" content="Sufee Admin - HTML5 Admin Template">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <link rel="apple-touch-icon" href="apple-icon.png">
    <link rel="shortcut icon" href="favicon.ico">


    <link rel="stylesheet" href="assets/admin/vendors/bootstrap/dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="assets/admin/vendors/font-awesome/css/font-awesome.min.css">
    <link rel="stylesheet" href="assets/admin/vendors/themify-icons/css/themify-icons.css">
    <link rel="stylesheet" href="assets/admin/vendors/flag-icon-css/css/flag-icon.min.css">
    <link rel="stylesheet" href="assets/admin/vendors/selectFX/css/cs-skin-elastic.css">
    <link rel="stylesheet" href="assets/admin/vendors/datatables.net-bs4/css/dataTables.bootstrap4.min.css">
    <link rel="stylesheet" href="assets/admin/vendors/datatables.net-buttons-bs4/css/buttons.bootstrap4.min.css">

    <link rel="stylesheet" href="assets/admin/css/style.css">

    <link href='https://fonts.googleapis.com/css?family=Open+Sans:400,600,700,800' rel='stylesheet' type='text/css'>
</head>

<body>
    <!-- Left Panel -->

    <aside id="left-panel" class="left-panel">
        <nav class="navbar navbar-expand-sm navbar-default">

            <div class="navbar-header">
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#main-menu" aria-controls="main-menu" aria-expanded="false" aria-label="Toggle navigation">
                    <i class="fa fa-bars"></i>
                </button>
               
            </div>

            <div id="main-menu" class="main-menu collapse navbar-collapse">
                <ul class="nav navbar-nav">
                    <h3 class="menu-title">Admin</h3><!-- /.menu-title -->
                   
                    <li class="menu-item-has-children active dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"> <i class="menu-icon fa fa-table"></i>Khoa</a>
                        <ul class="sub-menu children dropdown-menu">
                            <li><i class="fa fa-table"></i><a href="admin?action=addkhoa">Them Khoa</a></li>
                            <li><i class="fa fa-table"></i><a href="admin?action=listkhoa">Danh Sach Khoa</a></li>
                        </ul>
                    </li>
                     <li class="menu-item-has-children active dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"> <i class="menu-icon fa fa-table"></i>Bac Si</a>
                        <ul class="sub-menu children dropdown-menu">
                            <li><i class="fa fa-table"></i><a href="admin?action=addbacsi">Them Bac Si</a></li>
                            <li><i class="fa fa-table"></i><a href="admin?action=listbacsi">Danh Sach Bac Si</a></li>
                        </ul>
                    </li>
                      <li class="menu-item-has-children active dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"> <i class="menu-icon fa fa-table"></i>Benh Nhan</a>
                        <ul class="sub-menu children dropdown-menu">
                            <li><i class="fa fa-table"></i><a href="admin?action=listbenhnhan">Danh Sach Benh Nhan</a></li>
                        </ul>
                    </li>
                    
                    
                </ul>
            </div><!-- /.navbar-collapse -->
        </nav>
    </aside><!-- /#left-panel -->

    <!-- Left Panel -->

    <!-- Right Panel -->

    


<jsp:invoke fragment="content"></jsp:invoke>
       

   

    <!-- Right Panel -->


    <script src="assets/admin/vendors/jquery/dist/jquery.min.js"></script>
    <script src="assets/admin/vendors/popper.js/dist/umd/popper.min.js"></script>
    <script src="assets/admin/vendors/bootstrap/dist/js/bootstrap.min.js"></script>
    <script src="assets/admin/js/main.js"></script>


    <script src="assets/admin/vendors/datatables.net/js/jquery.dataTables.min.js"></script>
    <script src="assets/admin/vendors/datatables.net-bs4/js/dataTables.bootstrap4.min.js"></script>
    <script src="assets/admin/vendors/datatables.net-buttons/js/dataTables.buttons.min.js"></script>
    <script src="assets/admin/vendors/datatables.net-buttons-bs4/js/buttons.bootstrap4.min.js"></script>
    <script src="assets/admin/vendors/jszip/dist/jszip.min.js"></script>
    <script src="assets/admin/vendors/pdfmake/build/pdfmake.min.js"></script>
    <script src="assets/admin/vendors/pdfmake/build/vfs_fonts.js"></script>
    <script src="assets/admin/vendors/datatables.net-buttons/js/buttons.html5.min.js"></script>
    <script src="assets/admin/vendors/datatables.net-buttons/js/buttons.print.min.js"></script>
    <script src="assets/admin/vendors/datatables.net-buttons/js/buttons.colVis.min.js"></script>
    <script src="assets/admin/js/init-scripts/data-table/datatables-init.js"></script>


</body>

</html>

