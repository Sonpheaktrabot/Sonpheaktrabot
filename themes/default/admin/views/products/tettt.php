
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <base href="https://system.anakutapp.com/admin/"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="manifest" href="https://system.anakutapp.com/themes/default/admin/assets/manifest.json">
    <title>Edit Product - សុខហ៊ាងផ្គត់ផ្គង់វត្ថុធាតុដើម (Hecochem Co.,Ltd)</title>
    <link rel="shortcut icon" href="https://system.anakutapp.com/themes/default/admin/assets/images/icon.png"/>
    <link href="https://system.anakutapp.com/themes/default/admin/assets/styles/theme.css" rel="stylesheet"/>
    <link href="https://system.anakutapp.com/themes/default/admin/assets/styles/style.css" rel="stylesheet"/>
    <link rel="alternate" href="https://system.anakutapp.com/themes/default/admin/assets/css/khmerfonts.css">
    <script src="https://system.anakutapp.com/themes/default/admin/assets/js/jquery-2.0.3.min.js"></script>
    <script type="text/javascript" src="https://system.anakutapp.com/themes/default/admin/assets/js/jquery-migrate-1.2.1.min.js"></script>
    <!--[if lt IE 9]>
    <script src="https://system.anakutapp.com/themes/default/admin/assets/js/jquery.js"></script>
    <![endif]-->
    <noscript><style type="text/css">#loading { display: none; }</style></noscript>
        <script type="text/javascript">
        $(window).load(function () {
            $("#loading").fadeOut("slow");
        });
    </script>
    <style type="text/css">
    .main-menu>li>ul>li>a{
        padding-left: 20px !important;
    }
    .main-menu>li>ul>li>a{
        /*padding-left: 20px !important;*/
        background-color: rgb(51,51,51)!important;
    }
    .main-menu>li>ul>li.active>a{
        /*padding-left: 20px !important;*/
        background-color: rgb(91,192,222) !important;
    }
    @media (max-width: 991px) {
    /*.table-responsive {
        width: 100%;
        overflow-y: scroll;
        overflow-x: scroll;
        -ms-overflow-style: -ms-autohiding-scrollbar;
        border: 1px solid #dddddd;
        -webkit-overflow-scrolling: touch;  
    }*/
    .table-responsive .table td:last-child, .table-responsive .table th:last-child { display: table-cell !important; }
    .table-responsive .reports-table th:last-child, .table-responsive .reports-table td:last-child { display: table-cell !important; }
    .table-responsive .col-md-6.text-left, .table-responsive .col-md-6.text-right { text-align: center !important; }
    .table-responsive .table.dfTable td:last-child, .table-responsive .table.dfTable th:last-child,
    .modal-body .table-responsive .table th:last-child, .modal-body .table-responsive .table td:last-child { display: table-cell; }
    .order-table th:last-child, .order-table td:last-child { display: table-cell !important; }
}
</style>
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Noto%20Sans%20Khmer">

<style>
body {
  font-family: "Noto Sans Khmer" !important;
 
}
h1, h2, h3, h4, h5, h6 {
    font-family:"Noto Sans Khmer" !important;
    font-weight: 900;
    /* margin: 10px 0; */
}

</style>
</head>
<body>
<noscript>
    <div class="global-site-notice noscript">
        <div class="notice-inner">
            <p><strong>JavaScript seems to be disabled in your browser.</strong><br>You must have JavaScript enabled in
                your browser to utilize the functionality of this website.</p>
        </div>
    </div>
</noscript>
<div id="loading"></div>
<div id="app_wrapper">
    <header id="header" class="navbar">
        <div class="container">
            <a class="navbar-brand" href="https://system.anakutapp.com/admin/"><span class="logo">សុខហ៊ាងផ្គត់ផ្គង់វត្ថុធាតុដើម (Hecochem Co.,Ltd)</span></a>

            <div class="btn-group visible-xs pull-right btn-visible-sm">
                <button class="navbar-toggle btn" type="button" data-toggle="collapse" data-target="#sidebar_menu">
                    <span class="fa fa-bars"></span>
                </button>
                <a href="https://system.anakutapp.com/admin/users/profile/1189" class="btn">
                    <span class="fa fa-user"></span>
                </a>
                <a href="https://system.anakutapp.com/admin/logout" class="btn">
                    <span class="fa fa-sign-out"></span>
                </a>
            </div>
            <div class="header-nav">
                <ul class="nav navbar-nav pull-right">
                    <li class="dropdown">
                        <a class="btn account dropdown-toggle" data-toggle="dropdown" href="#">
                            <img alt="" src="https://system.anakutapp.com/assets/images/male.png" class="mini_avatar img-rounded">

                            <div class="user">
                                <span>Welcome chou123</span>
                            </div>
                        </a>
                        <ul class="dropdown-menu pull-right">
                            <li>
                                <a href="https://system.anakutapp.com/admin/users/profile/1189">
                                    <i class="fa fa-user"></i> Profile                                </a>
                            </li>
                            <li>
                                <a href="https://system.anakutapp.com/admin/users/profile/1189/#cpassword"><i class="fa fa-key"></i> Change Password                                </a>
                            </li>
                            <li class="divider"></li>
                            <li>
                                <a href="https://system.anakutapp.com/admin/logout">
                                    <i class="fa fa-sign-out"></i> Logout                                </a>
                            </li>
                        </ul>
                    </li>
                </ul>
                <ul class="nav navbar-nav pull-right">
                    <li class="dropdown hidden-xs"><a class="btn tip" title="Dashboard" data-placement="bottom" href="https://system.anakutapp.com/admin/welcome"><i class="fa fa-dashboard"></i></a></li>
                                                            <!-- <li class="dropdown hidden-sm">
                        <a class="btn tip" title="Settings" data-placement="bottom" href="https://system.anakutapp.com/admin/system_settings">
                            <i class="fa fa-cogs"></i>
                        </a>
                    </li> -->
                                        <li class="dropdown hidden-xs">
                        <a class="btn tip" title="Calculator" data-placement="bottom" href="#" data-toggle="dropdown">
                            <i class="fa fa-calculator"></i>
                        </a>
                        <ul class="dropdown-menu pull-right calc">
                            <li class="dropdown-content">
                                <span id="inlineCalc"></span>
                            </li>
                        </ul>
                    </li>
                                                            <li class="dropdown hidden-xs">
                        <a class="btn tip" title="Calendar" data-placement="bottom" href="https://system.anakutapp.com/admin/calendar">
                            <i class="fa fa-calendar"></i>
                        </a>
                    </li>
                                        <!-- <li class="dropdown hidden-sm">
                        <a class="btn tip" title="Styles" data-placement="bottom" data-toggle="dropdown"
                           href="#">
                            <i class="fa fa-css3"></i>
                        </a>
                        <ul class="dropdown-menu pull-right">
                            <li class="bwhite noPadding">
                                <a href="#" id="fixed" class="">
                                    <i class="fa fa-angle-double-left"></i>
                                    <span id="fixedText">Fixed</span>
                                </a>
                                <a href="#" id="cssLight" class="grey">
                                    <i class="fa fa-stop"></i> Grey
                                </a>
                                <a href="#" id="cssBlue" class="blue">
                                    <i class="fa fa-stop"></i> Blue
                                </a>
                                <a href="#" id="cssBlack" class="black">
                                   <i class="fa fa-stop"></i> Black
                               </a>
                           </li>
                        </ul>
                    </li> -->
                    <li class="dropdown hidden-xs">
                        <a class="btn tip" title="Language" data-placement="bottom" data-toggle="dropdown"
                           href="#">
                            <img src="https://system.anakutapp.com/assets/images/english.png" alt="">
                        </a>
                        <ul class="dropdown-menu pull-right">
                                                            <li>
                                    <a href="https://system.anakutapp.com/admin/welcome/language/arabic">
                                        <img src="https://system.anakutapp.com/assets/images/arabic.png" class="language-img">
                                        &nbsp;&nbsp;Arabic                                    </a>
                                </li>
                                                            <li>
                                    <a href="https://system.anakutapp.com/admin/welcome/language/english">
                                        <img src="https://system.anakutapp.com/assets/images/english.png" class="language-img">
                                        &nbsp;&nbsp;English                                    </a>
                                </li>
                                                            <li>
                                    <a href="https://system.anakutapp.com/admin/welcome/language/french">
                                        <img src="https://system.anakutapp.com/assets/images/french.png" class="language-img">
                                        &nbsp;&nbsp;French                                    </a>
                                </li>
                                                            <li>
                                    <a href="https://system.anakutapp.com/admin/welcome/language/german">
                                        <img src="https://system.anakutapp.com/assets/images/german.png" class="language-img">
                                        &nbsp;&nbsp;German                                    </a>
                                </li>
                                                            <li>
                                    <a href="https://system.anakutapp.com/admin/welcome/language/khmer">
                                        <img src="https://system.anakutapp.com/assets/images/khmer.png" class="language-img">
                                        &nbsp;&nbsp;Khmer                                    </a>
                                </li>
                                                            <li>
                                    <a href="https://system.anakutapp.com/admin/welcome/language/portuguese-brazilian">
                                        <img src="https://system.anakutapp.com/assets/images/portuguese-brazilian.png" class="language-img">
                                        &nbsp;&nbsp;Portuguese-brazilian                                    </a>
                                </li>
                                                            <li>
                                    <a href="https://system.anakutapp.com/admin/welcome/language/simplified-chinese">
                                        <img src="https://system.anakutapp.com/assets/images/simplified-chinese.png" class="language-img">
                                        &nbsp;&nbsp;Simplified-chinese                                    </a>
                                </li>
                                                            <li>
                                    <a href="https://system.anakutapp.com/admin/welcome/language/spanish">
                                        <img src="https://system.anakutapp.com/assets/images/spanish.png" class="language-img">
                                        &nbsp;&nbsp;Spanish                                    </a>
                                </li>
                                                            <li>
                                    <a href="https://system.anakutapp.com/admin/welcome/language/thai">
                                        <img src="https://system.anakutapp.com/assets/images/thai.png" class="language-img">
                                        &nbsp;&nbsp;Thai                                    </a>
                                </li>
                                                            <li>
                                    <a href="https://system.anakutapp.com/admin/welcome/language/traditional-chinese">
                                        <img src="https://system.anakutapp.com/assets/images/traditional-chinese.png" class="language-img">
                                        &nbsp;&nbsp;Traditional-chinese                                    </a>
                                </li>
                                                            <li>
                                    <a href="https://system.anakutapp.com/admin/welcome/language/turkish">
                                        <img src="https://system.anakutapp.com/assets/images/turkish.png" class="language-img">
                                        &nbsp;&nbsp;Turkish                                    </a>
                                </li>
                                                            <li>
                                    <a href="https://system.anakutapp.com/admin/welcome/language/vietnamese">
                                        <img src="https://system.anakutapp.com/assets/images/vietnamese.png" class="language-img">
                                        &nbsp;&nbsp;Vietnamese                                    </a>
                                </li>
                                                        <li class="divider"></li>
                            <li>
                                <a href="https://system.anakutapp.com/admin/welcome/toggle_rtl">
                                    <i class="fa fa-align-left"></i>
                                    Toggle Alignment                                </a>
                            </li>
                        </ul>
                    </li>
                                                                <li class="dropdown hidden-sm">
                            <a class="btn blightOrange tip" title="Alerts"
                                data-placement="left" data-toggle="dropdown" href="#">
                                <i class="fa fa-exclamation-triangle"></i>
                                <span class="number bred black">71</span>
                            </a>
                            <ul class="dropdown-menu pull-right">
                                <li>
                                    <a href="https://system.anakutapp.com/admin/reports/quantity_alerts" class="">
                                        <span class="label label-danger pull-right" style="margin-top:3px;">71</span>
                                        <span style="padding-right: 35px;">Quantity Alerts</span>
                                    </a>
                                </li>
                                <li>
                                    <a href="https://system.anakutapp.com/admin/reports/sale_payment_term" class="hide">
                                        <span class="label label-danger pull-right" style="margin-top:3px;">0</span>
                                        <span style="padding-right: 35px;">Payment alert</span>
                                    </a>
                                </li>
                                                                <li>
                      
                      
                      
                      
                                    <a href="https://system.anakutapp.com/admin/reports/expiry_alerts" class="">
                                        <span class="label label-danger pull-right" style="margin-top:3px;">0</span>
                                        <span style="padding-right: 35px;">Expiry Alerts</span>
                                    </a>
                                </li>
                                                                                                                            </ul>
                        </li>
                                                            <li class="dropdown hidden-xs">
                        <a class=" btn bdarkGreen tip" title="POS" data-placement="bottom" href="https://system.anakutapp.com/admin/pos">
                            <i class="fa fa-th-large"></i> <span class="padding05">POS</span>
                        </a>
                    </li>
                                                                <li class="dropdown hide">
                            <a class="btn bdarkGreen tip" id="today_profit" title="<span>Today's Profit</span>"
                                data-placement="bottom" data-html="true" href="https://system.anakutapp.com/admin/reports/profit"
                                data-toggle="modal" data-target="#myModal">
                                <i class="fa fa-hourglass-2"></i>
                            </a>
                        </li>
                                                                               
                                        <!--<li class="dropdown hidden-xs" style = "display:none;">
                        <a class="btn bred tip" title="Clear all locally saved data" data-placement="bottom" id="clearLS" href="#">
                            <i class="fa fa-eraser"></i>
                        </a>-->
                    </li>
                                    </ul>
            </div>
        </div>
    </header>

    <div class="container" id="container">
        <div class="row" id="main-con">
        <table class="lt"><tr><td class="sidebar-con">
            <div id="sidebar-left">
                <div class="sidebar-nav nav-collapse collapse navbar-collapse" id="sidebar_menu">
                    <ul class="nav main-menu">
                        <li class="mm_welcome ">
                            <a href="https://system.anakutapp.com/admin/">
                                <i class="fa fa-dashboard"></i>
                                <span class="text"> Dashboard</span>
                            </a>
                        </li>

                        
                            <li class="mm_products ">
                                <a class="dropmenu" href="#">
                                    <i class="fa fa-barcode"></i>
                                    <span class="text"> Products </span>
                                    <span class="chevron closed"></span>
                                </a>
                                <ul>
                                    <li id="products_index">
                                        <a class="submenu" href="https://system.anakutapp.com/admin/products">
                                            <i class="fa fa-barcode"></i>
                                            <span class="text"> List Products</span>
                                        </a>
                                    </li>
                                    <li id="products_add">
                                        <a class="submenu" href="https://system.anakutapp.com/admin/products/add">
                                            <i class="fa fa-plus-circle"></i>
                                            <span class="text"> Add Product</span>
                                        </a>
                                    </li>
                                    <li id="products_import_csv" class="">
                                        <a class="submenu" href="https://system.anakutapp.com/admin/products/import_csv">
                                            <i class="fa fa-file-text"></i>
                                            <span class="text"> Import Products</span>
                                        </a>
                                    </li>
                                    <li id="products_print_barcodes">
                                        <a class="submenu" href="https://system.anakutapp.com/admin/products/print_barcodes">
                                            <i class="fa fa-tags"></i>
                                            <span class="text"> Print Barcode Label</span>
                                        </a>
                                    </li>
                                    <li id="products_quantity_adjustments" >
                                        <a class="submenu" href="https://system.anakutapp.com/admin/products/quantity_adjustments">
                                            <i class="fa fa-filter"></i>
                                            <span class="text"> Quantity Adjustments</span>
                                        </a>
                                    </li>
                                    <li id="products_add_adjustment" class="hide">
                                        <a class="submenu" href="https://system.anakutapp.com/admin/products/add_adjustment">
                                            <i class="fa fa-filter"></i>
                                            <span class="text"> Add Adjustment</span>
                                        </a>
                                    </li>
                                    <li id="products_stock_counts" class="" >
                                        <a class="submenu" href="https://system.anakutapp.com/admin/products/stock_counts">
                                            <i class="fa fa-list-ol"></i>
                                            <span class="text"> Stock Counts</span>
                                        </a>
                                    </li>
                                    <li id="products_count_stock" class="hide">
                                        <a class="submenu" href="https://system.anakutapp.com/admin/products/   ">
                                            <i class="fa fa-plus-circle"></i>
                                            <span class="text"> Count Stock</span>
                                        </a>
                                    </li>
                                </ul>
                            </li>
                            <li class="mm_transfers ">
                                <a class="dropmenu" href="#">
                                    <i class="fa fa-star-o"></i>
                                    <span class="text"> Transfers </span>
                                    <span class="chevron closed"></span>
                                </a>
                                <ul>
                                    <li id="transfers_index">
                                        <a class="submenu" href="https://system.anakutapp.com/admin/transfers">
                                            <i class="fa fa-star-o"></i><span class="text"> List Transfers</span>
                                        </a>
                                    </li>
                                                                    </ul>
                            </li>
                            <li class="mm_sales  ">
                                <a class="dropmenu" href="#">
                                    <i class="fa fa-heart"></i>
                                    <span class="text"> Sales                                    </span> <span class="chevron closed"></span>
                                </a>
                                <ul>
                                    <li id="sales_index" class="">
                                        <a class="submenu" href="https://system.anakutapp.com/admin/sales">
                                            <i class="fa fa-heart"></i>
                                            <span class="text"> List Wholesale Sales</span>
                                        </a>
                                    </li>
                                                                       
                                                                        <li id="pos_sales">
                                        <a class="submenu" href="https://system.anakutapp.com/admin/pos/sales">
                                            <i class="fa fa-heart"></i>
                                            <span class="text"> List POS Sales</span>
                                        </a>
                                    </li>
                                                                        <li id="sales_add" class = "hide">
                                        <a class="submenu" href="https://system.anakutapp.com/admin/sales/add">
                                            <i class="fa fa-plus-circle"></i>
                                            <span class="text"> Add Sale</span>
                                        </a>
                                    </li>
                                    <li id="sales_sale_by_csv" class="hide">
                                        <a class="submenu" href="https://system.anakutapp.com/admin/sales/sale_by_csv">
                                            <i class="fa fa-plus-circle"></i>
                                            <span class="text"> Add Sale by CSV</span>
                                        </a>
                                    </li>
                                    <li id="sales_deliveries" class="">
                                        <a class="submenu" href="https://system.anakutapp.com/admin/sales/deliveries">
                                            <i class="fa fa-truck"></i>
                                            <span class="text"> Deliveries</span>
                                        </a>
                                    </li>
                                    <li id="sales_gift_cards" class="">
                                        <a class="submenu" href="https://system.anakutapp.com/admin/sales/gift_cards">
                                            <i class="fa fa-gift"></i>
                                            <span class="text"> List Gift Cards</span>
                                        </a>
                                    </li>
                                    <li id="sales_sale_payment" class ="">
                                        <a class="submenu" href="https://system.anakutapp.com/admin/sales/sale_payment">
                                            <i class=" fa fa-plus-circle"></i>
                                            <span class="text"> Add Payment</span>
                                        </a>
                                    </li>
                                    <li id="get_payment" class ="hide">
                                        <a class="submenu" href="https://system.anakutapp.com/admin/sales/list_sale_payment">
                                            <i class="fa fa-plus-circle"></i>
                                            <span class="text"> list payments</span>
                                        </a>
                                    </li>
                                </ul>
                            </li>
                            <li class="mm_purchases ">
                                <a class="dropmenu" href="#">
                                    <i class="fa fa-star"></i>
                                    <span class="text"> Purchases                                    </span> <span class="chevron closed"></span>
                                </a>
                                <ul>
                                        
                                    <li id="purchases_index">
                                        <a class="submenu" href="https://system.anakutapp.com/admin/purchases">
                                            <i class="fa fa-star"></i><span class="text"> List Purchases</span>
                                        </a>
                                    </li>
                                    <li id="purchases_clear_payment">
                                        <a class="submenu" href="https://system.anakutapp.com/admin/purchases/clear_payment">
                                            <i class="fa fa-money"></i><span class="text"> Add Payment</span>
                                        </a>
                                    </li>
                                    <li id="purchases_expenses">
                                        <a class="submenu" href="https://system.anakutapp.com/admin/purchases/expenses">
                                            <i class="fa fa-dollar"></i><span class="text"> List Expenses</span>
                                        </a>
                                    </li>
                                </ul>
                            </li>
                            <li class="mm_quotes hide">
                                <a class="dropmenu" href="#">
                                    <i class="fa fa-heart-o"></i>
                                    <span class="text"> Quotations </span>
                                    <span class="chevron closed"></span>
                                </a>
                                <ul>
                                    <li id="quotes_index">
                                        <a class="submenu" href="https://system.anakutapp.com/admin/quotes">
                                            <i class="fa fa-heart-o"></i>
                                            <span class="text"> List Quotation</span>
                                        </a>
                                    </li>
                                    <li id="quotes_add">
                                        <a class="submenu" href="https://system.anakutapp.com/admin/quotes/add">
                                            <i class="fa fa-plus-circle"></i>
                                            <span class="text"> Add Quotation</span>
                                        </a>
                                    </li>
                                </ul>
                            </li>

                            
                            <li class="mm_auth mm_customers mm_suppliers mm_billers">
                                <a class="dropmenu" href="#">
                                <i class="fa fa-users"></i>
                                <span class="text"> People </span>
                                <span class="chevron closed"></span>
                                </a>
                                <ul>
                                    <li id="auth_users">
                                        <a class="submenu" href="https://system.anakutapp.com/admin/users">
                                            <i class="fa fa-users"></i><span class="text"> List Users</span>
                                        </a>
                                    </li>
                                    <li id="customers_list_table" class="">
                                        <a class="submenu" href="https://system.anakutapp.com/admin/customers/list_table">
                                            <i class="fa fa-users"></i><span class="text"> List Tables</span>
                                        </a>
                                    </li>
                                    <li id="billers_index" class="">
                                        <a class="submenu" href="https://system.anakutapp.com/admin/billers">
                                            <i class="fa fa-users"></i><span class="text"> List Billers</span>
                                        </a>
                                    </li>
                                                                        <li id="customers_index" class = "" >
                                        <a class="submenu" href="https://system.anakutapp.com/admin/customers">
                                            <i class="fa fa-users"></i><span class="text"> List Customer</span>
                                        </a>
                                    </li>
                                    <li id="suppliers_index" class = "">
                                        <a class="submenu" href="https://system.anakutapp.com/admin/suppliers">
                                            <i class="fa fa-users"></i><span class="text"> List Suppliers</span>
                                        </a>
                                    </li>
                                </ul>
                            </li>
                            <li class="mm_notifications  hide" >
                                <a class="submenu" href="https://system.anakutapp.com/admin/notifications">
                                    <i class="fa fa-info-circle"></i><span class="text"> Notifications</span>
                                </a>
                            </li>
                                    
                                                                                        <li class="mm_system_settings mm_pos">
                                    <a class="dropmenu" href="#">
                                        <i class="fa fa-cog"></i><span class="text"> Settings </span>
                                        <span class="chevron closed"></span>
                                    </a>
                                    <ul>
                                        <li id="system_settings_index" class="hide">
                                            <a href="https://system.anakutapp.com/admin/system_settings">
                                                <i class="fa fa-cogs"></i><span class="text"> System Settings</span>
                                            </a>
                                        </li>
                                                                                <li id="pos_settings" class="hide">
                                            <a href="https://system.anakutapp.com/admin/pos/settings">
                                                <i class="fa fa-th-large"></i><span class="text"> POS Settings</span>
                                            </a>
                                        </li>
                                                                                        <li id="pos_printers" class="">
                                                    <a href="https://system.anakutapp.com/admin/pos/printers">
                                                        <i class="fa fa-print"></i><span class="text"> List Printers</span>
                                                    </a>
                                                </li>
                                                <li id="pos_add_printer" class="">
                                                    <a href="https://system.anakutapp.com/admin/pos/add_printer">
                                                        <i class="fa fa-plus-circle"></i><span class="text"> Add Printer</span>
                                                    </a>
                                                </li>
                                                                                                                            <li id="system_settings_change_logo" class = "">
                                            <a href="https://system.anakutapp.com/admin/system_settings/change_logo" data-toggle="modal" data-target="#myModal">
                                                <i class="fa fa-upload"></i><span class="text"> Change Logo</span>
                                            </a>
                                        </li>
                                        <li id="system_settings_currencies" class = "">
                                            <a href="https://system.anakutapp.com/admin/system_settings/currencies">
                                                <i class="fa fa-money"></i><span class="text"> Currencies</span>
                                            </a>
                                        </li>
                                                                                <li id="system_settings_customer_groups" class = "">
                                            <a href="https://system.anakutapp.com/admin/system_settings/customer_groups">
                                                <i class="fa fa-chain"></i><span class="text"> Customer Groups</span>
                                            </a>
                                        </li>
                                        <li id="system_settings_price_groups" class="">
                                            <a href="https://system.anakutapp.com/admin/system_settings/price_groups">
                                                <i class="fa fa-dollar"></i><span class="text"> Price Groups</span>
                                            </a>
                                        </li>
                                        <li id="system_settings_categories" class = "">
                                            <a href="https://system.anakutapp.com/admin/system_settings/categories">
                                                <i class="fa fa-folder-open"></i><span class="text"> Categories</span>
                                            </a>
                                        </li>
                                        <li id="system_settings_expense_categories" class="">
                                            <a href="https://system.anakutapp.com/admin/system_settings/expense_categories">
                                                <i class="fa fa-folder-open"></i><span class="text"> Expense Categories</span>
                                            </a>
                                        </li>
                                        <li id="system_settings_units" class = "">
                                            <a href="https://system.anakutapp.com/admin/system_settings/units">
                                                <i class="fa fa-wrench"></i><span class="text"> Units</span>
                                            </a>
                                        </li>
                                        <li id="system_settings_brands" class="">
                                            <a href="https://system.anakutapp.com/admin/system_settings/brands">
                                                <i class="fa fa-th-list"></i><span class="text"> Brands</span>
                                            </a>
                                        </li>
                                        <li id="system_settings_location" class="">
                                            <a href="https://system.anakutapp.com/admin/system_settings/location">
                                                <i class="fa fa-th-list"></i><span class="text"> Locations</span>
                                            </a>
                                        </li>
                                        <li id="system_settings_location" class="hide">
                                            <a href="https://system.anakutapp.com/admin/system_settings/zone">
                                                <i class="fa fa-th-list"></i><span class="text"> zone</span>
                                            </a>
                                        </li>
                                        <li id="system_settings_variants"  class="hide">
                                            <a href="https://system.anakutapp.com/admin/system_settings/variants">
                                                <i class="fa fa-tags"></i><span class="text"> Variants</span>
                                            </a>
                                        </li>
                                        <li id="system_settings_tax_rates" class="">
                                            <a href="https://system.anakutapp.com/admin/system_settings/tax_rates">
                                                <i class="fa fa-plus-circle"></i><span class="text"> Tax Rates</span>
                                            </a>
                                        </li>
                                        <!--  -->
                                      
                                        <li id="system_settings_warehouses" class = "">
                                                    <a href="https://system.anakutapp.com/admin/system_settings/warehouses">
                                                        <i class="fa fa-building-o"></i><span class="text"> Warehouses</span>
                                                    </a>
                                                </li>
                                        					                    

                                        <li id="system_settings_stores" class = "">    
                                                    <a href="https://system.anakutapp.com/admin/system_settings/stores">
                                                        <i class="fa fa-building-o"></i><span class="text"> Stores</span>
                                                    </a>
                                                </li>
                                       
                                        <li id="system_settings_user_groups" class = "">
                                            <a href="https://system.anakutapp.com/admin/system_settings/user_groups">
                                                <i class="fa fa-key"></i><span class="text"> Group Permissions</span>
                                            </a>
                                        </li>
                                        <li id="system_settings_backups" class="hide">
                                            <a href="https://system.anakutapp.com/admin/system_settings/backups">
                                                <i class="fa fa-database"></i><span class="text"> Backups</span>
                                            </a>
                                        </li>
                                        <li id="system_settings_updates"  class="hide">
                                            <a href="https://system.anakutapp.com/admin/system_settings/updates">
                                                <i class="fa fa-upload"></i><span class="text"> Updates</span>
                                            </a>
                                        </li>
                                    </ul>
                                </li>
                            
                           
    
                       
                                <li class="mm_reports ">
                            <a href="#" class="dropmenu">
                                <i class="fa fa-bar-chart-o"></i>
                                <span>Reports</span>
                                <span class="chevron closed"></span>
                            </a>
                            <ul>
                            <li id="reports_mycurrentstock_report">
                                   <a href="https://system.anakutapp.com/admin/reports/mycurrentstock_report">
                                       <i class="fa fa-bars"></i><span>Stock Report</span>
                                   </a>
                               </li> 
                               <li id="reports_product_report">
                                   <a href="https://system.anakutapp.com/admin/reports/product_report">
                                       <i class="fa fa-bars"></i><span>Product Report</span>
                                   </a>
                               </li> 
                               <li id="reports_filter_stock_report">
                                   <a href="https://system.anakutapp.com/admin/reports/filter_stock_report">
                                       <i class="fa fa-bars"></i><span>Stock In/Stock Out Report</span>
                                   </a>
                               </li> 
                               <li id="reports_quantity_alerts">
                               <a href="https://system.anakutapp.com/admin/reports/quantity_alerts" class="">
                               <i class="fa fa-barcode"></i>
                                        <span class="label label-danger pull-right" style="margin-top:3px;">71</span>
                                        <span style="padding-right: 35px;">Quantity Alerts</span>
                                    </a>
                               </li>
                               <li>
                                    
                                    
                                    
                                    
                                    <a href="https://system.anakutapp.com/admin/reports/expiry_alerts" class="">
                                    <i class="fa fa-barcode"></i>
                                        <span class="label label-danger pull-right" style="margin-top:3px;">0</span>
                                        <span style="padding-right: 35px;">Expiry Alerts</span>
                                    </a>
                                </li>
                               <li id="reports_register">
                                   <a href="https://system.anakutapp.com/admin/reports/register">
                                       <i class="fa fa-bars"></i><span>Register Report</span>
                                   </a>
                               </li> 
                               <li id="reports_deleted_suspended_bills_report">
                                   <a href="https://system.anakutapp.com/admin/reports/deleted_suspended_bills_report">
                                       <i class="fa fa-bars"></i><span>Deleted Bills Report</span>
                                   </a>
                               </li>
                               <li id="reports_daily_sales">
                                   <a href="https://system.anakutapp.com/admin/reports/daily_sales">
                                       <i class="fa fa-calendar-o"></i><span>Daily Summary Sale</span>
                                   </a>
                               </li>
                               <li id="reports_myproductcategories_report">
                                   <a href="https://system.anakutapp.com/admin/reports/myproductcategories_report">
                                       <i class="fa fa-barcode"></i><span>Product Sale Report</span>
                                   </a>
                               </li>
                               
                               <li id="reports_mysale_report">
                                   <a href="https://system.anakutapp.com/admin/reports/mysale_report">
                                       <i class="fa fa-barcode"></i><span>Sales Report</span>
                                   </a>
                               </li>

                               <li id="reports_sale_payments">
                                   <a href="https://system.anakutapp.com/admin/reports/payments?type=sale">
                                       <i class="fa fa-barcode"></i><span>Sale Payments Report</span>
                                   </a>
                               </li>
                                                                   <li id="reports_account_receiveable">
                                       <a href="https://system.anakutapp.com/admin/reports/account_receiveable">
                                           <i class="fa fa-money"></i><span>Customer Due Payment Report</span>
                                       </a>
                                   </li>
                                                                <li id="reports_purchase_product_report">
                                   <a href="https://system.anakutapp.com/admin/reports/purchase_product_report">
                                       <i class="fa fa-barcode"></i><span>Product Purchase Report</span>
                                   </a>
                               </li>
                               <li id="reports_mypurchase_report">
                                   <a href="https://system.anakutapp.com/admin/reports/mypurchase_report">
                                       <i class="fa fa-building"></i><span>Purchases Report</span>
                                   </a>
                               </li>
                               <li id="reports_purchase_payments">
                                   <a href="https://system.anakutapp.com/admin/reports/payments?type=purchase">
                                       <i class="fa fa-barcode"></i><span>Purchase Payments Report</span>
                                   </a>
                               </li>
                               <li id="reports_expanses_report">
                                    <a href="https://system.anakutapp.com/admin/reports/expanses_report">
                                        <i class="fa fa-bars"></i><span>Expenses Report</span>
                                    </a>
                                </li>
                                
                                                                    <li id="reports_account_payable">
                                       <a href="https://system.anakutapp.com/admin/reports/account_payable">
                                           <i class="fa fa-money"></i><span>Supplier Due Payment Report</span>
                                       </a>
                                   </li>
                                                                <li id="reports_profit_report" class="">
                                       <a href="https://system.anakutapp.com/admin/reports/profit_report">
                                           <i class="fa fa-money"></i><span>Profit/Loss Report</span>
                                       </a>
                                   </li>
                            </ul>
                        </li>


               
                            
                                        </div>
                
                <a href="#" id="main-menu-act" class="full visible-md visible-lg">
                    <i class="fa fa-angle-double-left"></i>
                </a>
            </div>
            </td><td class="content-con">
            <div id="content">
                <div class="row">
                    <div class="col-sm-12 col-md-12">
                        <ul class="breadcrumb">
                            <li><a href="https://system.anakutapp.com/">Home</a></li><li><a href="https://system.anakutapp.com/admin/products">Products</a></li><li class="active">Edit Product</li>                            <!-- <li class="right_log hidden-xs">
                                Your IP Address 103.7.26.146 <span class='hidden-sm'>( Last login at: 31-01-2024 08:37  )</span>                            </li> -->
                        </ul>
                    </div>
                </div>
                <div class="row">
                    <div class="col-lg-12">
                                                                                                                        <div class="alerts-con"></div>

<script type="text/javascript">
    $(document).ready(function () {
        
       
        $('#model_category').change(function () {
            var v = $(this).val();
            $('#modal-loading').show();
            if (v) {
                $.ajax({
                    type: "get",
                    async: false,
                    url: "https://system.anakutapp.com/admin/products/getFeatures/" + v,
                    dataType: "json",
                    success: function (scdata) {
                        if (scdata != null) {
                            
                            // scdata.push({id: '', text: 'select warehouse'});
                            $("#feature").select2("destroy").empty().attr("placeholder", "select feature").select2({
                                placeholder: "select model category to load",
                                minimumResultsForSearch: 7,
                                data: scdata
                            });
                            $("#model_subcategory").select2("destroy").empty().attr("placeholder", "select model subcategory").select2({
                                placeholder: "select model feature to load",
                                minimumResultsForSearch: 7,
                                data: ""
                            });
                        } else {
                            
                            $("#feature").select2("destroy").empty().attr("placeholder", "no features").select2({
                                placeholder: "no features",
                                minimumResultsForSearch: 7,
                                data: [{id: '', text: 'no feature'}]
                            });
                            $("#model_subcategory").select2("destroy").empty().attr("placeholder", "select model subcategory").select2({
                                placeholder: "select model feature to load",
                                minimumResultsForSearch: 7,
                                data: ""
                            });
                        }
                    },
                    error: function () {
                        bootbox.alert('Ajax error occurred, Please tray again.');
                        $('#modal-loading').hide();
                    }
                });
            } else {
                $("#subcategory").select2("destroy").empty().attr("placeholder", "Please select category to load").select2({
                    placeholder: "Please select category to load",
                    minimumResultsForSearch: 7,
                    data: [{id: '', text: 'Please select category to load'}]
                });
            }
            $('#modal-loading').hide();
        });
        
        
        $('#feature').change(function () {
            var v = $(this).val();
            $('#modal-loading').show();
            if (v) {
                $.ajax({
                    type: "get",
                    async: false,
                    url: "https://system.anakutapp.com/admin/products/getModelSubcategories/" + v,
                    dataType: "json",
                    success: function (scdata) {
                        if (scdata != null) {
                            // scdata.push({id: '', text: 'select model subcategories'});
                            $("#model_subcategory").select2("destroy").empty().attr("placeholder", "select model subcategory").select2({
                                placeholder: "select feature to load",
                                minimumResultsForSearch: 7,
                                data: scdata
                            });
                        } else {
                            $("#model_subcategory").select2("destroy").empty().attr("placeholder", "no model subcategory").select2({
                                placeholder: "no model subcategory",
                                minimumResultsForSearch: 7,
                                data: [{id: '', text: 'no model subcategory'}]
                            });
                        }
                    },
                    error: function () {
                        bootbox.alert('Ajax error occurred, Please tray again.');
                        $('#modal-loading').hide();
                    }
                });
            } else {
                $("#subcategory").select2("destroy").empty().attr("placeholder", "Please select category to load").select2({
                    placeholder: "Please select category to load",
                    minimumResultsForSearch: 7,
                    data: [{id: '', text: 'Please select category to load'}]
                });
            }
            $('#modal-loading').hide();
        });
      

        $('.gen_slug').change(function(e) {
            getSlug($(this).val(), 'products');
        });
        $("#subcategory").select2("destroy").empty().attr("placeholder", "Please select category to load").select2({
            placeholder: "Please select category to load", data: [
                {id: '', text: 'Please select category to load'}
            ]
        });
        $('#category').change(function () {
            var v = $(this).val();
            $('#modal-loading').show();
            if (v) {
                $.ajax({
                    type: "get",
                    async: false,
                    url: "https://system.anakutapp.com/admin/products/getSubCategories/" + v,
                    dataType: "json",
                    success: function (scdata) {
                        if (scdata != null) {
                            scdata.push({id: '', text: 'Please select sub category'});
                            $("#subcategory").select2("destroy").empty().attr("placeholder", "Please select sub category").select2({
                                placeholder: "Please select category to load",
                                minimumResultsForSearch: 7,
                                data: scdata
                            });
                        } else {
                            $("#subcategory").select2("destroy").empty().attr("placeholder", "No subcategory").select2({
                                placeholder: "No subcategory",
                                minimumResultsForSearch: 7,
                                data: [{id: '', text: 'No subcategory'}]
                            });
                        }
                    },
                    error: function () {
                        bootbox.alert('Ajax error occurred, Please tray again.');
                        $('#modal-loading').hide();
                    }
                });
            } else {
                $("#subcategory").select2("destroy").empty().attr("placeholder", "Please select category to load").select2({
                    placeholder: "Please select category to load",
                    minimumResultsForSearch: 7,
                    data: [{id: '', text: 'Please select category to load'}]
                });
            }
            $('#modal-loading').hide();
        });
        $('#code').bind('keypress', function (e) {
            if (e.keyCode == 13) {
                e.preventDefault();
                return false;
            }
        });
    });
</script>
<div class="box">
    <div class="box-header">
        <h2 class="blue"><i class="fa-fw fa fa-edit"></i>Edit Product</h2>
    </div>
    <div class="box-content">
        <div class="row">
            <div class="col-lg-12">
                <p class="introtext">Please update the information below. The field labels marked with * are required input fields.</p>
                <form action="https://system.anakutapp.com/admin/products/edit/193692" data-toggle="validator" role="form" enctype="multipart/form-data" method="post" accept-charset="utf-8">
<input type="hidden" name="token" value="4a917e3b4e190ed52dc22368e63da70f" />                          
                <div class="col-md-5">
                    <div class="form-group">
                        <label for="type">Product Type</label>                        <select name="type" class="form-control" id="type" required="required">
<option value="standard" selected="selected">Standard</option>
<option value="combo">Combo</option>
<option value="service">Service</option>
</select>
                    </div>
                    <div class="form-group all">
                        <label for="name">Product Name</label>                        <input type="text" name="name" value="ម្សៅខាប់"  class="form-control gen_slug" id="name" required="required" />
                    </div>
                    <div class="form-group all">
                        <label for="code">Product Code</label>                        <input type="text" name="code" value="HCLTD001"  class="form-control" id="code"  required="required" />
                        <span class="help-block">You can scan your barcode  and select the correct symbology below</span>
                    </div>

                    <!-- <div class="form-group all">
                        <label for="slug">Slug</label>                        <input type="text" name="slug" value="0"  class="form-control tip" id="slug" required="required" />
                    </div> -->

                    <div class="form-group standard_combo hide">
                        <label for="weight">Weight (kg)</label>                        <input type="text" name="weight" value="0.0000"  class="form-control tip" id="weight" />
                    </div>
                    <div class="form-group all">
                        <label for="barcode_symbology">Barcode Symbology</label>                        <select name="barcode_symbology" class="form-control select" id="barcode_symbology" required="required" style="width:100%;">
<option value="code25">Code25</option>
<option value="code39">Code39</option>
<option value="code128" selected="selected">Code128</option>
<option value="ean8">EAN8</option>
<option value="ean13">EAN13</option>
<option value="upca">UPC-A</option>
<option value="upce">UPC-E</option>
</select>
                    </div>
                    <div class="form-group all ">
                        <label for="brand">Brand</label>                        <select name="brand" class="form-control select" id="brand" placeholder="Select Brand" style="width:100%">
<option value=""></option>
</select>
                    </div>
                    <div class="form-group">
                        <label for="location">Locations</label>                        <select name="location" class="form-control select" id="location" placeholder="Select Locations" style="width:100%">
<option value=""></option>
</select>
                    </div>
                    <div class="form-group all">
                        <label for="category">Category</label>                        <select name="category" class="form-control select" id="category" placeholder="Select Category" required="required" style="width:100%">
<option value=""></option>
<option value="13864">គ្រឿងទឹកត្រី</option>
<option value="13865" selected="selected">សាប៊ូ</option>
<option value="13866">អាសុីត ក្លរ អំបិល</option>
<option value="13878">គំរបដប</option>
<option value="13879">សំបកដប</option>
<option value="13880">ថ្លៃដឹក</option>
<option value="13882">ក្លិន</option>
<option value="13883">លក្ខ</option>
</select>
                    </div>
                    <div class="form-group all">
                        <label for="subcategory">Sub Category</label>                        <div class="controls" id="subcat_data"> <input type="text" name="subcategory" value=""  class="form-control" id="subcategory"  placeholder="Please select category to load" />
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="unit">Product Unit</label>                                                <select name="unit" class="form-control tip" required="required" id="unit" style="width:100%;">
<option value="">Select Unit</option>
<option value="11314" selected="selected">ខាំ (HCLTDខាំ)</option>
<option value="11317">ធុង (HCLTDធុង)</option>
<option value="11326">គីឡូ (HCLTDគីឡូ)</option>
<option value="11327">បាវ (HCLTDបាវ)</option>
<option value="11329">គីឡូក្រាម (HCLTDគីឡូក្រាម)</option>
<option value="11331">ដប (HCLTDដប)</option>
<option value="11332">ថង់ (HCLTDថង់)</option>
<option value="11333">ដុំ (HCLTDដុំ)</option>
<option value="11334">កាន (HCLTDកាន)</option>
<option value="11351">ដង (HCLTDដង)</option>
</select>
                    </div>
                    <div class="form-group">
                        <label for="default_sale_unit">Default Sale Unit</label>                                                <select name="default_sale_unit" class="form-control" id="default_sale_unit" style="width:100%;">
<option value="">Select Unit</option>
<option value="11313">គីឡូក្រាម (HCLTDគីឡូក្រាម)</option>
<option value="11314" selected="selected">ខាំ (HCLTDខាំ)</option>
<option value="11315">បាវ​ 20គីឡូ (HCLTDបាវ)</option>
</select>
                    </div>
                    <div class="form-group ">
                        <label for="default_purchase_unit">Default Purchase Unit</label>                        <select name="default_purchase_unit" class="form-control" id="default_purchase_unit" style="width:100%;">
<option value="">Select Unit</option>
<option value="11313">គីឡូក្រាម (HCLTDគីឡូក្រាម)</option>
<option value="11314" selected="selected">ខាំ (HCLTDខាំ)</option>
<option value="11315">បាវ​ 20គីឡូ (HCLTDបាវ)</option>
</select>
                    </div>
                    <div class="form-group">
                        <label for="cost">Product Cost</label>                        <input type = 'number' step = '0.01'  class='form-control tip' id='cost' required='required' type = 'number' name = 'cost' value = '0.00'/>                    </div>
                    <div class="form-group all">
                        <label for="price">Product Price</label>                        <input type = 'number' step = '0.01' class='form-control tip' id='price' required='required' type = 'number' name = 'price' value = '0.80'/>                    </div>
                     <div class="form-group">
                        <table id="tbSale_type" class="table table-striped table-hover">
                            <thead>
                                <tr>
                                <td>Unit</td>
                                    <td>Price</td>
                                    <td></td>
                                </tr>
                            </thead>
                            <tbody>
                                                                    <tr  class="edit_data item_28938"  id="row_28938" class="item_28938" data-item-id="28938">

                                        <td><input type="text" class="form-control" name="type_sale[]" value="បាវ​ 20គីឡូ" readonly></td>
                                        <td><input type="text" class="form-control" name="price_unit[]" value="160.00"></td>
                                        <td><i class="fa fa-times tip del" id = "28938" title="Remove"></i></td>
                                    </tr>
                                                                    <tr  class="edit_data item_28937"  id="row_28937" class="item_28937" data-item-id="28937">

                                        <td><input type="text" class="form-control" name="type_sale[]" value="គីឡូក្រាម" readonly></td>
                                        <td><input type="text" class="form-control" name="price_unit[]" value="8.00"></td>
                                        <td><i class="fa fa-times tip del" id = "28937" title="Remove"></i></td>
                                    </tr>
                                                            </tbody>
                        </table>
                    </div>

                    <div class="form-group">
                        <input type="checkbox" class="checkbox" value="1" name="promotion" id="promotion" >
                        <label for="promotion" class="padding05">
                            Promotion                        </label>
                    </div>

                    <div id="promo" style="display:none;">
                        <div class="well well-sm">
                            <div class="form-group">
                                <label for="promo_price">Promotion Price</label>                                <input type="text" name="promo_price" value=""  class="form-control tip" id="promo_price" />
                            </div>
                            <div class="form-group">
                                <label for="start_date">Start Date</label>                                <input type="text" name="start_date" value=""  class="form-control tip date" id="start_date" />
                            </div>
                            <div class="form-group">
                                <label for="end_date">End Date</label>                                <input type="text" name="end_date" value=""  class="form-control tip date" id="end_date" />
                            </div>
                        </div>
                    </div>

                                        <div class="form-group standard">
                        <label for="alert_quantity">Alert Quantity</label>                        <div
                            class="input-group"> <input type="text" name="alert_quantity" value="0.00"  class="form-control tip" id="alert_quantity" />
                            <span class="input-group-addon">
                            <input type="checkbox" name="track_quantity" id="inlineCheckbox1"
                                   value="1" checked="checked">
                        </span>
                        </div>
                    </div>

                    <div class="form-group all">
                        <label for="product_image">Product Image</label>                        <input id="product_image" type="file" data-browse-label="Browse ..." name="product_image" data-show-upload="false"
                               data-show-preview="false" accept="image/*" class="form-control file">
                    </div>

                    <div class="form-group all">
                        <label for="images">Product Gallery Images</label>                        <input id="images" type="file" data-browse-label="Browse ..." name="userfile[]" multiple="true" data-show-upload="false"
                               data-show-preview="false" class="form-control file" accept="image/*">
                    </div>
                    <div id="img-details"></div>
                </div>
                <div class="col-md-6 col-md-offset-1">
                    <div class="standard">
                        <div>
                            <div class="row"><div class="col-md-12"><div class="well"><p><strong>Warehouse Quantity</strong></p><span class="bold text-info">សុខហ៊ាងផ្គត់ផ្គង់វត្ថុធាតុដើម (Hecochem Co.,Ltd): <input type="hidden" value="-14315.00" id="vwh_qty_751"><span class="padding05" id="rwh_qty_751">-14,315</span></span><br><div class="clearfix"></div></div></div></div>                        </div>
                        <div class="clearfix"></div>

                        <div id="attrs"></div>
                        <div class="well well-sm">
                                                            <div class="form-group">
                                <input type="checkbox" class="checkbox" name="attributes" id="attributes" >
                                <label for="attributes" class="padding05">Add more product variants</label>
                                e.g. Multiple Sizes and/or Colors                            </div>

                            <div id="attr-con" style="display:none;">
                                <div class="form-group" id="ui" style="margin-bottom: 0;">
                                <div class="input-group">
                                        <input type="text" name="typesInput" value=""  class="form-control select-tags"  id="typesInput" placeholder="enter type" />
                                        <div class="input-group-addon" style="padding: 2px 5px;background:red;">
                                            <!-- <a href="#" id="addType">
                                                <i class="fa fa-2x fa-plus-circle" id="addIcon"></i>
                                            </a> -->
                                        </div>
                                </div>
                                <div class="input-group">
                                    <input type="text" name="attributesInput" value=""  class="form-control select-tags" id="attributesInput" placeholder="enter product variants" />
                                    <div class="input-group-addon" style="padding: 2px 5px;">
                                        <a href="#" id="addAttributes">
                                            <i class="fa fa-2x fa-plus-circle" id="addIcon"></i>
                                        </a>
                                    </div>
                                </div>
                                    <div style="clear:both;"></div>
                                </div>
                                <div class="table-responsive">
                                    <table id="attrTable" class="table table-bordered table-condensed table-striped" style="margin-bottom: 0; margin-top: 10px;">
                                        <thead>
                                            <tr class="active">
                                                <th>Name</th>
                                                <th class = "hide">Warehouse</th>
                                                <th class ="hide">Quantity</th>
                                                <th>Price Addition</th>
                                                <th><i class="fa fa-times attr-remove-all"></i></th>
                                            </tr>
                                        </thead>
                                        <tbody></tbody>
                                    </table>
                                </div>
                            </div>
                                                            
                        </div>
                        <div class="clearfix"></div>

                    </div>
                    <br>
                    <br>
                                        <br>
                    <div class="combo" style="display:none;">

                        <div class="form-group">
                            <label for="add_item">Add Product</label> (Product without variants only)                            <input type="text" name="add_item" value=""  class="form-control ttip" id="add_item" data-placement="top" data-trigger="focus" data-bv-notEmpty-message="Please add items below" placeholder="Add Item" />
                        </div>
                        <div class="control-group table-group">
                            <label class="table-label" for="combo">Combo Products</label>
                            <!--<div class="row"><div class="ccol-md-10 col-sm-10 col-xs-10"><label class="table-label" for="combo">Combo Products</label></div>
                            <div class="ccol-md-2 col-sm-2 col-xs-2"><div class="form-group no-help-block" style="margin-bottom: 0;"><input type="text" name="combo" id="combo" value="" data-bv-notEmpty-message="" class="form-control" /></div></div></div>-->
                            <div class="controls table-controls">
                                <table id="prTable"
                                       class="table items table-striped table-bordered table-condensed table-hover">
                                    <thead>
                                    <tr>
                                        <th class="col-md-5 col-sm-5 col-xs-5">Product (Code - Name)</th>
                                        <th class="col-md-2 col-sm-2 col-xs-2">Quantity</th>
                                        <th class="col-md-3 col-sm-3 col-xs-3">Unit Price</th>
                                        <th class="col-md-1 col-sm-1 col-xs-1 text-center">
                                            <i class="fa fa-trash-o" style="opacity:0.5; filter:alpha(opacity=50);"></i>
                                        </th>
                                    </tr>
                                    </thead>
                                    <tbody></tbody>
                                </table>
                            </div>
                        </div>

                    </div>

                    <div class="digital" style="display:none;">
                                                <div class="form-group digital">
                            <label for="digital_file">Digital File</label>                            <input id="digital_file" type="file" data-browse-label="Browse ..." name="digital_file" data-show-upload="false"
                                   data-show-preview="false" class="form-control file">
                        </div>
                        <div class="form-group digital">
                            <label for="file_link">File Link/URL</label>                            <input type="text" name="file_link" value=""  class="form-control" id="file_link" />
                        </div>
                    </div>

                    <div class="form-group standard">
                        <div class="form-group">
                            <label for="supplier">Supplier</label>                            <button type="button" class="btn btn-primary btn-xs" id="addSupplier"><i class="fa fa-plus"></i>
                            </button>
                        </div>
                        <div class="row" id="supplier-con">
                            <div class="col-xs-12">
                                <div class="form-group">
                                    <input type="text" name="supplier" value=""  class="form-control " id="supplier" placeholder="Select Supplier" style="width:100%;" />
                                </div>
                            </div>
                            <div class="col-xs-6">
                                <div class="form-group">
                                    <input type="text" name="supplier_part_no" value=""  class="form-control tip" id="supplier_part_no" placeholder="Supplier Part Number" />
                                </div>
                            </div>
                            <div class="col-xs-6">
                                <div class="form-group">
                                    <input type="text" name="supplier_price" value=""  class="form-control tip" id="supplier_price" placeholder="Supplier Price" />
                                </div>
                            </div>
                        </div>
                        <div id="ex-suppliers"></div>
                    </div>

                </div>

                <div class="col-md-12">

                    <div class="form-group hide">
                        <input name="featured" type="checkbox" class="checkbox" id="featured" value="1" />
                        <label for="featured" class="padding05">Featured (Shop homepage listing)</label>
                    </div>
                    <div class="form-group hide">
                        <input name="cf" type="checkbox" class="checkbox" id="extras" value="" checked="checked"/><label
                            for="extras" class="padding05">Custom Fields</label>
                    </div>
                    <div class="row" id="extras-con">

                        <div class="col-md-4">
                            <div class="form-group all">
                                <label for="cf1">Product Custom Field 1</label>                                <input type="text" name="cf1" value=""  class="form-control tip" id="cf1" />
                            </div>
                        </div>

                        <div class="col-md-4">
                            <div class="form-group all">
                                <label for="cf2">Product Custom Field 2</label>                                <input type="text" name="cf2" value=""  class="form-control tip" id="cf2" />
                            </div>
                        </div>

                        <div class="col-md-4">
                            <div class="form-group all">
                                <label for="cf3">Product Custom Field 3</label>                                <input type="text" name="cf3" value=""  class="form-control tip" id="cf3" />
                            </div>
                        </div>

                        <div class="col-md-4">
                            <div class="form-group all">
                                <label for="cf4">Product Custom Field 4</label>                                <input type="text" name="cf4" value=""  class="form-control tip" id="cf4" />
                            </div>
                        </div>

                        <div class="col-md-4">
                            <div class="form-group all">
                                <label for="cf5">Product Custom Field 5</label>                                <input type="text" name="cf5" value=""  class="form-control tip" id="cf5" />
                            </div>
                        </div>

                        <div class="col-md-4">
                            <div class="form-group all">
                                <label for="cf6">Product Custom Field 6</label>                                <input type="text" name="cf6" value=""  class="form-control tip" id="cf6" />
                            </div>
                        </div>


                    </div>


                    <div class="form-group all">
                        <label for="product_details">Product Details</label>                        <textarea name="product_details" cols="40" rows="10"  class="form-control" id="details"></textarea>
                    </div>
                    <div class="form-group all">
                        <label for="details">Product details for invoice</label>                        <textarea name="details" cols="40" rows="10"  class="form-control" id="details"></textarea>
                    </div>

                    <div class="form-group">
                        <input type="submit" name="edit_product" value="Edit Product"  class="btn btn-primary" />
                    </div>

                </div>
                </form>
            </div>

        </div>
    </div>
</div>

<script type="text/javascript">
    $(document).ready(function () {
        var audio_success = new Audio('https://system.anakutapp.com/themes/default/admin/assets/sounds/sound2.mp3');
        var audio_error = new Audio('https://system.anakutapp.com/themes/default/admin/assets/sounds/sound3.mp3');
        var items = {};
                        $('#extras').on('ifChecked', function () {
            $('#extras-con').slideDown();
        });
        $('#extras').on('ifUnchecked', function () {
            $('#extras-con').slideUp();
        });

                $('#promotion').on('ifChecked', function (e) {
            $('#promo').slideDown();
        });
        $('#promotion').on('ifUnchecked', function (e) {
            $('#promo').slideUp();
        });

        $('.attributes').on('ifChecked', function (event) {
            $('#options_' + $(this).attr('id')).slideDown();
        });
        $('.attributes').on('ifUnchecked', function (event) {
            $('#options_' + $(this).attr('id')).slideUp();
        });

        //$('#cost').removeAttr('required');
        $('#type').change(function () {
            var t = $(this).val();
            if (t !== 'standard') {
                $('.standard').slideUp();
                $('#cost').attr('required', 'required');
                $('form[data-toggle="validator"]').bootstrapValidator('addField', 'cost');
            } else {
                $('.standard').slideDown();
                $('#cost').removeAttr('required');
                $('form[data-toggle="validator"]').bootstrapValidator('removeField', 'cost');
            }
            if (t !== 'digital') {
                $('.digital').slideUp();
            } else {
                $('.digital').slideDown();
            }
            if (t !== 'combo') {
                $('.combo').slideUp();
                //$('#add_item').removeAttr('required');
                //$('form[data-toggle="validator"]').bootstrapValidator('removeField', 'add_item');
            } else {
                $('.combo').slideDown();
                //$('#add_item').attr('required', 'required');
                //$('form[data-toggle="validator"]').bootstrapValidator('addField', 'add_item');
            }
        });

        $("#add_item").autocomplete({
            source: 'https://system.anakutapp.com/admin/products/suggestions',
            minLength: 1,
            autoFocus: false,
            delay: 5,
            response: function (event, ui) {
                if ($(this).val().length >= 16 && ui.content[0].id == 0) {
                    //audio_error.play();
                    bootbox.alert('No product found', function () {
                        $('#add_item').focus();
                    });
                    $(this).val('');
                }
                else if (ui.content.length == 1 && ui.content[0].id != 0) {
                    ui.item = ui.content[0];
                    $(this).data('ui-autocomplete')._trigger('select', 'autocompleteselect', ui);
                    $(this).autocomplete('close');
                }
                else if (ui.content.length == 1 && ui.content[0].id == 0) {
                    //audio_error.play();
                    bootbox.alert('No product found', function () {
                        $('#add_item').focus();
                    });
                    $(this).val('');

                }
            },
            select: function (event, ui) {
                event.preventDefault();
                if (ui.item.id !== 0) {
                    var row = add_product_item(ui.item);
                    if (row) {
                        $(this).val('');
                        $('#add_item').removeAttr('required');
                        $('form[data-toggle="validator"]').bootstrapValidator('removeField', 'add_item');
                    }
                } else {
                    //audio_error.play();
                    bootbox.alert('No product found');
                }
            }
        });
        $('#add_item').removeAttr('required');
        $('form[data-toggle="validator"]').bootstrapValidator('removeField', 'add_item');

        function add_product_item(item) {
            if (item == null) {
                return false;
            }
            item_id = item.id;
            if (items[item_id]) {
                items[item_id].qty = (parseFloat(items[item_id].qty) + 1).toFixed(2);
            } else {
                items[item_id] = item;
            }

            $("#prTable tbody").empty();
            $.each(items, function () {
                var row_no = this.id;
                var newTr = $('<tr id="row_' + row_no + '" class="item_' + this.id + '"></tr>');
                tr_html = '<td><input name="combo_item_id[]" type="hidden" value="' + this.id + '"><input name="combo_item_name[]" type="hidden" value="' + this.name + '"><input name="combo_item_code[]" type="hidden" value="' + this.code + '"><span id="name_' + row_no + '">' + this.code + ' - ' + this.name + '</span></td>';
                tr_html += '<td><input class="form-control text-center rquantity" name="combo_item_quantity[]" type="text" value="' + formatQuantity2(this.qty) + '" data-id="' + row_no + '" data-item="' + this.id + '" id="quantity_' + row_no + '" onClick="this.select();"></td>';
                tr_html += '<td><input class="form-control text-center rprice" name="combo_item_price[]" type="text" value="' + formatDecimal(this.price) + '" data-id="' + row_no + '" data-item="' + this.id + '" id="combo_item_price_' + row_no + '" onClick="this.select();"></td>';
                tr_html += '<td class="text-center"><i class="fa fa-times tip del" id="' + row_no + '" title="Remove" style="cursor:pointer;"></i></td>';
                newTr.html(tr_html);
                newTr.prependTo("#prTable");
            });
            $('.item_' + item_id).addClass('warning');
            //audio_success.play();
            return true;

        }

        function calculate_price() {
            var rows = $('#prTable').children('tbody').children('tr');
            var pp = 0;
            $.each(rows, function () {
                pp += formatDecimal(parseFloat($(this).find('.rprice').val())*parseFloat($(this).find('.rquantity').val()));
            });
            $('#price').val(pp);
            return true;
        }

        $(document).on('change', '.rquantity, .rprice', function () {
            calculate_price();
        });

        $(document).on('click', '.del', function () {
            var id = $(this).attr('id');
            delete items[id];
            $(this).closest('#row_' + id).remove();
            calculate_price();
        });

        $(document).on('click', '.delVariant', function () {
            var id = $(this).attr('id');
            $('#variant_del_'+id).val(id);
            $(this).closest('#variant_' + id).hide();
           
        });
        $(document).on('click', '.delVariantOption', function () {
            var id = $(this).attr('id');
            $('#variant_option_del_'+id).val(id);
            $(this).closest('#variant_option_' + id).hide();
           
        });


        var su = 2;
        $('#addSupplier').click(function () {
            if (su <= 5) {
                $('#supplier_1').select2('destroy');
                $('#supplier_1').select2('destroy');
                var html = '<div style="clear:both;height:5px;"></div><div class="row"><div class="col-xs-12"><div class="form-group"><input type="hidden" name="supplier_' + su + '", class="form-control" id="supplier_' + su + '" placeholder="Select Supplier" style="width:100%;display: block !important;" /></div></div><div class="col-xs-6"><div class="form-group"><input type="text" name="supplier_' + su + '_part_no" class="form-control tip" id="supplier_' + su + '_part_no" placeholder="Supplier Part Number" /></div></div><div class="col-xs-6"><div class="form-group"><input type="text" name="supplier_' + su + '_price" class="form-control tip" id="supplier_' + su + '_price" placeholder="Supplier Price" /></div></div></div>';
                $('#ex-suppliers').append(html);
                var sup = $('#supplier_' + su);
                suppliers(sup);
                su++;
            } else {
                bootbox.alert('Max allowed reached');
                return false;
            }
        });

        var _URL = window.URL || window.webkitURL;
        $("input#images").on('change.bs.fileinput', function () {
            var ele = document.getElementById($(this).attr('id'));
            var result = ele.files;
            $('#img-details').empty();
            for (var x = 0; x < result.length; x++) {
                var fle = result[x];
                for (var i = 0; i <= result.length; i++) {
                    var img = new Image();
                    img.onload = (function (value) {
                        return function () {
                            ctx[value].drawImage(result[value], 0, 0);
                        }
                    })(i);

                    img.src = 'images/' + result[i];
                }
            }
        });
        var variants = ["test"];
        $(".select-tags").select2({
            tags: variants,
            tokenSeparators: [","],
            multiple: true
        });
        $(document).on('ifChecked', '#attributes', function (e) {
            $('#attr-con').slideDown();
        });
        $(document).on('ifUnchecked', '#attributes', function (e) {
            $(".select-tags").select2("val", "");
            $('.attr-remove-all').trigger('click');
            $('#attr-con').slideUp();
        });
        $('#addAttributes').click(function (e) {
            e.preventDefault();
            var attrs_val = $('#attributesInput').val(), attrs;
            attrs = attrs_val.split(',');
            for (var i in attrs) {
                if (attrs[i] !== '') {
                    $('#attrTable').show().append('<tr class="attr"><td><input type="hidden" name="attr_name[]" value="' + attrs[i] + '"><span>' + attrs[i] + '</span></td><td class="code text-center hide"><input type="hidden" name="attr_warehouse[]" value=""><span></span></td><td class="quantity text-center hide"><input type="hidden" name="attr_quantity[]" value="0"><span></span></td><td class="price text-right"><input type="hidden" name="attr_price[]" value="0"><span>0</span></span></td><td class="text-center"><i class="fa fa-times delAttr"></i></td></tr>');
                }
            }
        });
        $(document).on('click', '.delAttr', function () {
            $(this).closest("tr").remove();
        });
        $(document).on('click', '.attr-remove-all', function () {
            $('#attrTable tbody').empty();
            $('#attrTable').hide();
        });
        var row, warehouses = [{"id":"751","code":"HCLTDHCLTD","name":"\u179f\u17bb\u1781\u17a0\u17ca\u17b6\u1784\u1795\u17d2\u1782\u178f\u17cb\u1795\u17d2\u1782\u1784\u17cb\u179c\u178f\u17d2\u1790\u17bb\u1792\u17b6\u178f\u17bb\u178a\u17be\u1798 (Hecochem Co.,Ltd)","address":"<p>\u1795\u17d2\u179b\u17bc\u179c\u1797\u17d2\u179b\u17c4\u17c7\u17a2\u17bc\u179a\u17ac\u179f\u17d2\u179f\u17b8 113 \u1795\u17d2\u1791\u17c7\u179b\u17c1\u1781 10J<\/p>","map":null,"phone":"","email":"","price_group_id":"0","store_id":"938"}];
        $(document).on('click', '.attr td:not(:last-child)', function () {
            row = $(this).closest("tr");
            $('#aModalLabel').text(row.children().eq(0).find('span').text());
            $('#awarehouse').select2("val", (row.children().eq(1).find('input').val()));
            $('#aquantity').val(row.children().eq(2).find('span').text());
            $('#aprice').val(row.children().eq(3).find('span').text());
            $('#aModal').appendTo('body').modal('show');
        });

        $(document).on('click', '#updateAttr', function () {
            var wh = $('#awarehouse').val(), wh_name;
            $.each(warehouses, function () {
                if (this.id == wh) {
                    wh_name = this.name;
                }
            });
            row.children().eq(1).html('<input type="hidden" name="attr_warehouse[]" value="' + wh + '"><input type="hidden" name="attr_wh_name[]" value="' + wh_name + '"><span>' + wh_name + '</span>');
            row.children().eq(2).html('<input type="hidden" name="attr_quantity[]" value="' + ($('#aquantity').val() ? $('#aquantity').val() : 0) + '"><span>' + $('#aquantity').val() + '</span>');
            row.children().eq(3).html('<input type="hidden" name="attr_price[]" value="' + $('#aprice').val() + '"><span>' + currencyFormat($('#aprice').val()) + '</span>');

            $('#aModal').modal('hide');
        });
    });

        $(document).ready(function () {
        $('#enable_wh').click(function () {
            var whs = $('.wh');
            $.each(whs, function () {
                $(this).val($('#v' + $(this).attr('id')).val());
            });
            $('#warehouse_quantity').val(1);
            $('.wh').attr('disabled', false);
            $('#show_wh_edit').slideDown();
        });
        $('#disable_wh').click(function () {
            $('#warehouse_quantity').val(0);
            $('#show_wh_edit').slideUp();
        });
        $('#show_wh_edit').hide();
        $('.wh').attr('disabled', true);
        var t = "standard";
        if (t !== 'standard') {
            $('.standard').slideUp();
            $('#cost').attr('required', 'required');
            $('form[data-toggle="validator"]').bootstrapValidator('addField', 'cost');
        } else {
            $('.standard').slideDown();
            $('#cost').attr('required', 'required');
            $('form[data-toggle="validator"]').bootstrapValidator('removeField', 'cost');
        }
        if (t !== 'digital') {
            $('.digital').slideUp();
        } else {
            $('.digital').slideDown();
        }
        if (t !== 'combo') {
            $('.combo').slideUp();
        } else {
            $('.combo').slideDown();
        }
        $('#add_item').removeAttr('required');
        $('form[data-toggle="validator"]').bootstrapValidator('removeField', 'add_item');
        //$("#code").parent('.form-group').addClass("has-error");
        //$("#code").focus();
        $("#product_image").parent('.form-group').addClass("text-warning");
        $("#images").parent('.form-group').addClass("text-warning");
        $.ajax({
            type: "get", async: false,
            url: "https://system.anakutapp.com/admin/products/getSubCategories/" + 13865,
            dataType: "json",
            success: function (scdata) {
                if (scdata != null) {
                    $("#subcategory").select2("destroy").empty().attr("placeholder", "Please select sub category").select2({
                        placeholder: "Please select category to load",
                        minimumResultsForSearch: 7,
                        data: scdata
                    });
                } else {
                    $("#subcategory").select2("destroy").empty().attr("placeholder", "No subcategory").select2({
                        placeholder: "No subcategory",
                        minimumResultsForSearch: 7,
                        data: [{id: '', text: 'No subcategory'}]
                    });
                }
            }
        });
                    $('#supplier1').addClass('rsupplier');
                                                function select_supplier(id, v) {
            $('#' + id).val(v).select2({
                minimumInputLength: 1,
                data: [],
                initSelection: function (element, callback) {
                    $.ajax({
                        type: "get", async: false,
                        url: "https://system.anakutapp.com/admin/suppliers/getSupplier/" + $(element).val(),
                        dataType: "json",
                        success: function (data) {
                            callback(data[0]);
                        }
                    });
                },
                ajax: {
                    url: site.base_url + "suppliers/suggestions",
                    dataType: 'json',
                    quietMillis: 15,
                    data: function (term, page) {
                        return {
                            term: term,
                            limit: 10
                        };
                    },
                    results: function (data, page) {
                        if (data.results != null) {
                            return {results: data.results};
                        } else {
                            return {results: [{id: '', text: 'No Match Found'}]};
                        }
                    }
                }
            });
        }
    });
     $(document).ready(function() {
            $('#unit').change(function(e) {
            var v = $(this).val();
            if (v) {
                $.ajax({
                    type: "get",
                    async: false,
                    url: "https://system.anakutapp.com/admin/products/getSubUnits/" + v,
                    dataType: "json",
                    success: function (data) {
                        $('#default_sale_unit').select2("destroy").empty().select2({minimumResultsForSearch: 7});
                        $('#default_purchase_unit').select2("destroy").empty().select2({minimumResultsForSearch: 7});
                        $.each(data, function () {
                            $("<option />", {value: this.id, text: this.name+' ('+this.code+')'}).appendTo($('#default_sale_unit'));
                            $("<option />", {value: this.id, text: this.name+' ('+this.code+')'}).appendTo($('#default_purchase_unit'));
                        });
                        $('#default_sale_unit').select2('val', v);
                        $('#default_purchase_unit').select2('val', v);
                    },
                    error: function () {
                        bootbox.alert('Ajax error occurred, Please tray again.');
                    }
                });
            } else {
                $('#default_sale_unit').select2("destroy").empty();
                $('#default_purchase_unit').select2("destroy").empty();
                $("<option />", {value: '', text: 'Please select unit first'}).appendTo($('#default_sale_unit'));
                $("<option />", {value: '', text: 'Please select unit first'}).appendTo($('#default_purchase_unit'));
                $('#default_sale_unit').select2({minimumResultsForSearch: 7}).select2('val', '');
                $('#default_purchase_unit').select2({minimumResultsForSearch: 7}).select2('val', '');
            }
        }).on('change',function(){
            var v = $(this).val();
            // $('.edit_data').hide();
            
            if (v) {
                $('#tbSale_type tbody').empty();
                $.ajax({
                    type: "get",
                    async: false,
                    url: "https://system.anakutapp.com/admin/products/getSubUnits/" + v,
                    dataType: "json",
                    success: function (data) {
                        console.log(data);
                        // $.each(data, function () {
                        for(i=0;i<data.length;i++){
                            var st_row = data[i].id;
                            if(data[i].id == v)
                            {
                                continue;
                            }
                            var strow =$('<tr id="row_' + st_row + '" class="item_' + data[i].id + '" data-item-id="' + st_row + '"></tr>');
                            var st_html ='<td><input type="input" class="form-control tip" name="type_sale[]" value="'+data[i].name+'" readonly></td>';
                                st_html += '<td><input type="number" name="price_unit[]" class="form-control tip" ></td>';
                                st_html += '<td class="text-center"><i class="fa fa-times tip del" id="' + st_row + '" title="Remove" style="cursor:pointer;"></i></td>';
                            strow.html(st_html);
                            strow.appendTo('#tbSale_type tbody');
                        };
                    },
                    error: function () {
                        bootbox.alert('Ajax error occurred, Please tray again.');
                    }
                });
            } 
        });
    });
</script>

<div class="modal" id="aModal" tabindex="-1" role="dialog" aria-labelledby="aModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true"><i
                            class="fa fa-2x">&times;</i></span><span class="sr-only">Close</span></button>
                <h4 class="modal-title" id="aModalLabel">Add product manually</h4>
            </div>
            <div class="modal-body" id="pr_popover_content">
                <form class="form-horizontal" role="form">
                    <div class="form-group hide">
                        <label for="awarehouse" class="col-sm-4 control-label">Warehouse</label>
                        <div class="col-sm-8">
                            <select name="warehouse" id="awarehouse" class="form-control">
<option value="" selected="selected"></option>
<option value="751">សុខហ៊ាងផ្គត់ផ្គង់វត្ថុធាតុដើម (Hecochem Co.,Ltd)</option>
</select>
                        </div>
                    </div>
                    <div class="form-group hide">
                        <label for="aquantity" class="col-sm-4 control-label">Quantity</label>
                        <div class="col-sm-8">
                            <input type="text" class="form-control" id="aquantity">
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="aprice" class="col-sm-4 control-label">Price</label>
                        <div class="col-sm-8">
                            <input type="text" class="form-control" id="aprice">
                        </div>
                    </div>

                </form>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-primary" id="updateAttr">Submit</button>
            </div>
        </div>
    </div>
</div>
<div class="clearfix"></div>
</div></div></div></td></tr></table></div></div><div class="clearfix"></div>
<footer>
<a href="#" id="toTop" class="blue" style="position: fixed; bottom: 30px; right: 30px; font-size: 30px; display: none;">
    <i class="fa fa-chevron-circle-up"></i>
</a>

    <p style="text-align:center;">&copy; 2024 Anakut Digital Solution (<a href="https://system.anakutapp.com/documentation.pdf" target="_blank">v3.2.3</a>
        ) </p>
</footer>
</div><div class="modal fade in" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true"></div>
<div class="modal fade in" id="myModal2" tabindex="-1" role="dialog" aria-labelledby="myModalLabel2" aria-hidden="true"></div>
<div id="modal-loading" style="display: none;">
    <div class="blackbg"></div>
    <div class="loader"></div>
</div>
<div id="ajaxCall"><i class="fa fa-spinner fa-pulse"></i></div>
<script type="text/javascript">
var dt_lang = {"sEmptyTable":"No data available in table","sInfo":"Showing _START_ to _END_ of _TOTAL_ entries","sInfoEmpty":"Showing 0 to 0 of 0 entries","sInfoFiltered":"(filtered from _MAX_ total entries)","sInfoPostFix":"","sInfoThousands":",","sLengthMenu":"Show _MENU_ ","sLoadingRecords":"Loading...","sProcessing":"Processing...","sSearch":"Search","sZeroRecords":"No matching records found","oAria":{"sSortAscending":": activate to sort column ascending","sSortDescending":": activate to sort column descending"},"oPaginate":{"sFirst":"<< First","sLast":"Last >>","sNext":"Next >","sPrevious":"< Previous"}}, dp_lang = {"days":["Sunday","Monday","Tuesday","Wednesday","Thursday","Friday","Saturday","Sunday"],"daysShort":["Sun","Mon","Tue","Wed","Thu","Fri","Sat","Sun"],"daysMin":["Su","Mo","Tu","We","Th","Fr","Sa","Su"],"months":["January","February","March","April","May","June","July","August","September","October","November","December"],"monthsShort":["Jan","Feb","Mar","Apr","May","Jun","Jul","Aug","Sep","Oct","Nov","Dec"],"today":"Today","suffix":[],"meridiem":[]}, site = {"url":"https:\/\/system.anakutapp.com\/","base_url":"https:\/\/system.anakutapp.com\/admin\/","assets":"https:\/\/system.anakutapp.com\/themes\/default\/admin\/assets\/","settings":{"logo":"photo_2020-11-15_13-0.jpg","logo2":"photo_2020-11-15_13-01.jpg","site_name":"Anakut Digital Solution","language":"english","default_warehouse":"1","accounting_method":"2","default_currency":"USD","default_tax_rate":"0","rows_per_page":"10","version":"3.2.3","default_tax_rate2":"1","dateformat":"4","sales_prefix":"INV","quote_prefix":"QUOTE","purchase_prefix":"PO","transfer_prefix":"TR","delivery_prefix":"DO","payment_prefix":"IPAY","return_prefix":"SR","returnp_prefix":"PR","expense_prefix":"","item_addition":"0","theme":"default","product_serial":"0","default_discount":"1","product_discount":"1","discount_method":"1","tax1":"0","tax2":"1","overselling":"1","iwidth":"800","iheight":"800","twidth":"150","theight":"150","watermark":"0","smtp_host":"pop.gmail.com","bc_fix":"4","auto_detect_barcode":"0","captcha":"0","reference_format":"2","racks":"0","attributes":"0","product_expiry":"1","decimals":"2","qty_decimals":"0","decimals_sep":".","thousands_sep":",","invoice_view":"0","default_biller":"0","rtl":"0","each_spent":null,"ca_point":null,"each_sale":null,"sa_point":null,"sac":"0","display_all_products":"0","display_symbol":"0","symbol":"","remove_expired":"0","barcode_separator":"_","set_focus":"0","price_group":"1","barcode_img":"1","ppayment_prefix":"POP","disable_editing":"90","qa_prefix":"","update_cost":"0","apis":"0","user_language":"english","user_rtl":"0"},"dateFormats":{"js_sdate":"dd-mm-yyyy","php_sdate":"d-m-Y","mysq_sdate":"%d-%m-%Y","js_ldate":"dd-mm-yyyy hh:ii","php_ldate":"d-m-Y H:i","mysql_ldate":"%d-%m-%Y %H:%i"}};
var lang = {paid: 'Paid', pending: 'Pending', completed: 'Completed', ordered: 'Ordered', received: 'Received', partial: 'Partial', sent: 'Sent', r_u_sure: 'Are you sure?', due: 'Due', returned: 'Returned', transferring: 'Transferring', active: 'Active', inactive: 'Inactive', unexpected_value: 'Unexpected value provided!', select_above: 'Please select above first', download: 'Download'};
</script>
<script type="text/javascript" src="https://system.anakutapp.com/themes/default/admin/assets/js/bootstrap.min.js"></script>
<script type="text/javascript" src="https://system.anakutapp.com/themes/default/admin/assets/js/jquery.dataTables.min.js"></script>
<script type="text/javascript" src="https://system.anakutapp.com/themes/default/admin/assets/js/jquery.dataTables.dtFilter.min.js"></script>
<script type="text/javascript" src="https://system.anakutapp.com/themes/default/admin/assets/js/select2.min.js"></script>
<script type="text/javascript" src="https://system.anakutapp.com/themes/default/admin/assets/js/jquery-ui.min.js"></script>
<script type="text/javascript" src="https://system.anakutapp.com/themes/default/admin/assets/js/bootstrapValidator.min.js"></script>
<script type="text/javascript" src="https://system.anakutapp.com/themes/default/admin/assets/js/custom.js"></script>
<script type="text/javascript" src="https://system.anakutapp.com/themes/default/admin/assets/js/jquery.calculator.min.js"></script>
<script type="text/javascript" src="https://system.anakutapp.com/themes/default/admin/assets/js/core.js"></script>
<script type="text/javascript" src="https://system.anakutapp.com/themes/default/admin/assets/js/perfect-scrollbar.min.js"></script>

<script type="text/javascript" charset="UTF-8">var oTable = '', r_u_sure = "Are you sure?";
    (function ($) { "use strict"; $.fn.select2.locales['sma'] = { formatMatches: function (matches) { if (matches === 1) { return "One result is available, press enter to select it."; } return matches + "results are available, use up and down arrow keys to navigate."; }, formatNoMatches: function () { return "No matches found"; }, formatInputTooShort: function (input, min) { var n = min - input.length; return "Please type "+n+" or more characters"; }, formatInputTooLong: function (input, max) { var n = input.length - max; if(n == 1) { return "Please delete "+n+" character"; } else { return "Please delete "+n+" characters"; } }, formatSelectionTooBig: function (n) { if(n == 1) { return "You can only select "+n+" item"; } else { return "You can only select "+n+" items"; } }, formatLoadMore: function (pageNumber) { return "Loading more results..."; }, formatSearching: function () { return "Searching..."; }, formatAjaxError: function() { return "Ajax request failed"; }, }; $.extend($.fn.select2.defaults, $.fn.select2.locales['sma']); })(jQuery);    $.extend(true, $.fn.dataTable.defaults, {"oLanguage":{"sEmptyTable":"No data available in table","sInfo":"Showing _START_ to _END_ of _TOTAL_ entries","sInfoEmpty":"Showing 0 to 0 of 0 entries","sInfoFiltered":"(filtered from _MAX_ total entries)","sInfoPostFix":"","sInfoThousands":",","sLengthMenu":"Show _MENU_ ","sLoadingRecords":"Loading...","sProcessing":"Processing...","sSearch":"Search","sZeroRecords":"No matching records found","oAria":{"sSortAscending":": activate to sort column ascending","sSortDescending":": activate to sort column descending"},"oPaginate":{"sFirst":"<< First","sLast":"Last >>","sNext":"Next >","sPrevious":"< Previous"}}});
    $.fn.datetimepicker.dates['sma'] = {"days":["Sunday","Monday","Tuesday","Wednesday","Thursday","Friday","Saturday","Sunday"],"daysShort":["Sun","Mon","Tue","Wed","Thu","Fri","Sat","Sun"],"daysMin":["Su","Mo","Tu","We","Th","Fr","Sa","Su"],"months":["January","February","March","April","May","June","July","August","September","October","November","December"],"monthsShort":["Jan","Feb","Mar","Apr","May","Jun","Jul","Aug","Sep","Oct","Nov","Dec"],"today":"Today","suffix":[],"meridiem":[]};
    $(window).load(function () {
        $('.mm_products').addClass('active');
        $('.mm_products').find("ul").first().slideToggle();
        $('#products_edit').addClass('active');
        $('.mm_products a .chevron').removeClass("closed").addClass("opened");
    });
</script>
</body>
</html>
