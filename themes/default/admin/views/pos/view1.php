<?php defined('BASEPATH') or exit('No direct script access allowed'); ?>
<?php if ($modal) {
    ?>
<div class="modal-dialog no-modal-header" role="document"><div class="modal-content"><div class="modal-body">
    <button type="button" class="close" data-dismiss="modal" aria-hidden="true"><i class="fa fa-2x">&times;</i></button>
    <?php
} else {
        ?><!doctype html>
    <html>
    <head>
    <meta charset="utf-8">
                    <title><?= $page_title . " " . lang("no") . " " . $inv->id; ?></title>
                    <base href="<?= base_url() ?>"/>
                    <meta http-equiv="cache-control" content="max-age=0"/>
                    <meta http-equiv="cache-control" content="no-cache"/>
                    <meta http-equiv="expires" content="0"/>
                    <meta http-equiv="pragma" content="no-cache"/>
                    <link rel="shortcut icon" href="<?= $assets ?>images/icon.png"/>
                    <style type="text/css" media="all">
                        @page {
                            margin: 2px 15px;
                        }
                        body { 
							color: #000; 
							font-family: "Khmer OS Battambang";
							font-size: 12px;
							line-height: 1.42857143;
							margin: 0 5px;
						}
						p {
							margin:5px 0;
						}
						.text-right {
							text-align: right;
                            padding-right: 10px !important;
						}
                        #wrapper { max-width: 800px; margin: 0 auto; padding-top: 20px; }
                        .btn { margin-bottom: 5px; }
                        .table { border-radius: 3px; width:100%; border-collapse: collapse; margin-top:10px; margin-bottom:-10px;}
                        thead.mythead, tr.mythead {color:#000; }
                        tr.mythead, tr.mytotal {color:#000 !important;}
                        tr.mythead th, tr.mytotal th {color:#000 !important; background-color: grey;}
                        tr.mytotal th {font-size: 12px;}
                        tr.mythead th.text-right {padding-right:10px !important;}
						thead.mythead th { padding:10px 0; color:#000 !important;}
						tfoot.mytfoot { border-top: 1px solid #000;}
                        .table th, .table td { vertical-align: middle !important; padding:5px; border:1px solid;}
                        h3 { margin: 5px 0; }
						a {
							text-decoration: none;
							color: #fff;
						}
						.btn-primary {
							background-color: #3c8dbc;
							border-color: #367fa9;
						}
						.btn-success {
							background-color: #00a65a;
							border-color: #008d4c;
						}
						.btn-warning {
							background-color: #f39c12;
							border-color: #e08e0b;
						}
						.btn-block {
							display: block;
							width: 100%;
						}
						.btn-primary {
							color: #fff;
						}
						.btn {
							border-radius: 3px;
                            font-family: "Khmer OS Battambang";
							margin-bottom: 5px;
							-webkit-box-shadow: none;
							box-shadow: none;
							border: 0px solid transparent;
							display: inline-block;
							padding: 6px 0;
							margin-bottom: 0;
							font-size: 14px;
							font-weight: 400;
							line-height: 1.42857143;
							text-align: center;
							white-space: nowrap;
							-ms-touch-action: manipulation;
							touch-action: manipulation;
							cursor: pointer;
							-webkit-user-select: none;
							-moz-user-select: none;
							-ms-user-select: none;
							user-select: none;
							margin-bottom: 5px;
						}
						.well-sm {
							padding: 5px;
							border-radius: 3px;
						}
						.well {
							min-height: 20px;
							border: 1px solid #000;
							border-radius: 4px;
							-webkit-box-shadow: inset 0 1px 1px rgba(0,0,0,.05);
							box-shadow: inset 0 1px 1px rgba(0,0,0,.05);
						}
						.alert-success {
							background-color: #00a65a!important;
							border-color: #008d4c!important;
						}
						.alert, .callout {
							border-radius: 3px;
						}
						.alert {
							padding: 15px;
							border: 1px solid transparent;
						}
						.alert, .thumbnail {
							margin-bottom: 20px;
						}
						.alert .close {
							color: #000;
							opacity: .2;
							filter: alpha(opacity=20);
						}
						button.close {
							-webkit-appearance: none;
							padding: 0;
							cursor: pointer;
							background: 0 0;
							border: 0;
						}
						.close {
							float: right;
							font-size: 21px;
							line-height: 1;
							color: #000;
							text-shadow: 0 1px 0 #fff;
							filter: alpha(opacity=20);
							opacity: .2;
						}
                        a[href^=tel] {
                            color: inherit;
                            text-decoration: none;
                        }
						.alert .alert-link, .close {
							font-weight: 700;
						}						
                        @media print {
                            .no-print { display: none; }
                            #wrapper { max-width: 700px; min-width: 250px; margin: 0 auto;}						
                        }
                        <?php if($Settings->rtl) { ?>
                            .text-right { text-align: left; }
                            .text-left { text-align: right; }
                            tfoot tr th:first-child { text-align: left; }
                        <?php } else { ?>
                            tfoot tr th:first-child { text-align: right; }
                        <?php } ?>
                    </style>
    </head>

    <body>
        <?php
    } ?>
    <div id="wrapper">
        <div id="receiptData">
            <div class="no-print">
                <?php
                if ($message) {
                    ?>
                    <div class="alert alert-success">
                        <button data-dismiss="alert" class="close" type="button">×</button>
                        <?=is_array($message) ? print_r($message, true) : $message; ?>
                    </div>
                    <?php
                } ?>
            </div>
            <div id="receipt-data">


<!-- UPDATE -->


            <div style="text-align:center;">
            
                <?php
                
                    echo '<p style="text-align:center;  font-size:18px; font-family:Khmer OS Muol;">វិក្កយបត្រ<br>INVOICE</p>'; 
                                                
                ?>
            </div>


            <table width="100%">
                <tr>
                    <td width="20%">Company Name: </td>
                    <td width="20%"><?php echo lang('') . '' . ($customer->company && $customer->company != '-' ? $customer->company : $customer->name) ;?></td>
                    <td width="20%"></td>
                    <td width="20%">Issued Date: </td>
                    <td width="20%"><?php echo $this->sma->hrld($inv->date)?></td>
                </tr>
                <tr>
                    <td width="20%" >Address: </td>
                    <td width="20%" rowspan="2"><?php echo $customer->address . ' ' . $customer->city;?></td>
                    <td width="20%"></td>
                    <td width="20%">Invoice No: </td>
                    <td width="20%">INV<?php $unixtime = strtotime($inv->date); echo date('Y', $unixtime ) .  "-" . str_pad($inv->id, 4, '0', STR_PAD_LEFT) ?></td>
                </tr>
                
                </table>
                <table width="100%">
               
                <tr>
                <td width="20%">Phone: </td>
                    <td width="20%"><?php echo $customer->phone ;?></td>
                    <td width="20%"></td>
                    <td width="20%"></td>                  
                    <td width="20%"></td>
                </tr>
                <tr>
                    <td width="20%">Email: </td>
                    <td width="20%"><?php echo $customer->email ;?></td>
                    <td width="20%"></td>
                    <td width="20%"></td>                  
                    <td width="20%"></td>
                </tr>
            </table>


            <div style="clear:both;"></div>
                <table class="table table-striped table-condensed">
                    
                    <thead class="mythead">
                        <tr class="mythead">
                            <th class="text-center" style="border-bottom: 1px solid;">ល.រ<br>NO.</th>
                            <th class="text-center" style="border-bottom: 1px solid;">កូដ<br>Item Code</th>
                            <th class="text-center" style="width: 40%; border-bottom: 1px solid;">បរិយាយមុខទំនិញ<br>DESCRIPTION</th>
                            <th class="text-center" style="border-bottom: 1px solid;">ខ្នាត<br>UNIT</th>                           
                            <th class="text-center" style="border-bottom: 1px solid;">ចំនួន<br>QUANTITY</th>   
                            <th class="text-center" style="border-bottom: 1px solid;">តម្លៃរាយ<br>UNIT PRICE</th>
                            <th class="text-center" style="border-bottom: 1px solid;">តម្លៃសរុប<br>SUBTOTAL</th>
                        </tr>
                    </thead>
                    <tbody>
                    <?php
                        $r           = 1; $category           = 0;
                        $tax_summary = [];
                        foreach ($rows as $row) {

                            echo '<tr>
                            <td style="text-align:center;">' . $r . '</td>
                            <td>'. $row->product_code .'</td>
                            <td>' . $row->product_name . '</td>';
                               // if (!empty($row->product_details)) {
                               //     echo $row->product_details . '<br>';
                                //}
                                if (!empty($row->comment)) {
                                    echo '<small>'.$row->comment . '</small></td>';
                                }

                            echo '<td  style="text-align:center;">'.  $row->product_unit_code .'</td>';
                            echo '<td  style="text-align:center;">' . $this->sma->formatQuantity($row->unit_quantity) . '</td>';
                            echo '<td  style="text-align:right;">' . $Settings->symbol . $this->sma->formatMoney($row->unit_price) . '</td>';        
                            echo '<td  style="text-align:right;">' . $Settings->symbol . $this->sma->formatMoney($row->subtotal) . '</td></tr>';
                                


                            $r++;
                        }

                    //    for ( $i = $r; $i <=15; $i++ ) {
                    //       echo "<tr>";
                    //       for ( $j = 0; $j < 6; $j++ ) {
                    //            echo "<td height='15px'>","", "</td>";
                    //        }
                    //        echo "</tr>";
                    //    }
                        
                    ?>
                           
                            <tr>
                                <th rowspan="5" colspan="2"><?= '<img src="' . base_url('assets/uploads/qr.png' ) . '" alt="" width="130px">' ?></th>
                                <th colspan="2" style="border:none; border-bottom:1px solid;text-align:left; font-weight:normal;border-left:1px solid #000;"></th>
                                <th colspan="2" class="text-right" style="border-left:none; border-bottom:1px solid; ">SUB TOTAL AMOUNT</th>
                                <th style="text-align: right;border-bottom: 1px solid #000;border-top: 1px solid #000;"><?= $Settings->symbol . $this->sma->formatMoney($return_sale ? (($inv->total + $inv->product_tax) + ($return_sale->total + $return_sale->product_tax)) : ($inv->total + $inv->product_tax));?></th>
                            </tr>

                            <tr>
                            <th colspan="2" style="border:none; text-align:left; font-weight:normal;border-left:1px solid #000;border-bottom:1px solid;"><?php echo $biller->cf1 ?></th>
                            <th colspan="2" class="text-right" style="border-left:none;border-bottom:1px solid; ">DISCOUNT</th>
                            <th style="text-align: right;border-bottom: 1px solid #000;border-top: 1px solid #000;"><?= $Settings->symbol . $this->sma->formatMoney($inv->order_discount) ?></th>
                            </tr>
                            <tr>
                            <th colspan="2" style="border:none;border-bottom:1px solid; text-align:left; font-weight:normal;border-left:1px solid #000;"><?php echo $biller->cf2 ?> </th>
                            <th colspan="2" class="text-right" style="border-left:none;border-bottom:1px solid;  ">TOTAL AMOUNT</th>
                                <th style="text-align: right;border-bottom: 1px solid #000;border-top: 1px solid #000;"><?= $Settings->symbol . $this->sma->formatMoney($return_sale ? (($inv->total + $inv->product_tax) + ($return_sale->total + $return_sale->product_tax)) : ($inv->total + $inv->product_tax) - $inv->order_discount);?></th>
                            </tr>
                            <tr>
                            <th colspan="2" style="border:none; text-align:left; font-weight:normal;border-left:1px solid #000;border-bottom:1px solid;"><?php echo $biller->cf3 ?></th>
                            <th colspan="2" class="text-right" style="border-left:none; border-bottom:1px solid; ">DEPOSIT</th>
                                <th style="text-align: right;border-bottom: 1px solid #000;border-top: 1px solid #000;"><?= $Settings->symbol . $this->sma->formatMoney($return_sale ? ($inv->paid + $return_sale->paid) : $inv->paid); ?></th>
                            </tr>

                            <tr>
                            <th colspan="2" style="border:none; text-align:left; font-weight:normal;border-left:1px solid #000;border-bottom:1px solid #000;"><?php echo $biller->cf4 ?> </th>
                             <th colspan="2" class="text-right" style="border-left:none; border-bottom:1px solid #000;">BALANCE</th>
                                <th style="text-align: right;border-bottom: 1px solid #000;border-top: 1px solid #000;"><?= $Settings->symbol . $this->sma->formatMoney(($return_sale ? (($inv->grand_total + $inv->rounding) + $return_sale->grand_total) : ($inv->grand_total + $inv->rounding)) - ($return_sale ? ($inv->paid + $return_sale->paid) : $inv->paid)); ?></th>
                            </tr>
                    </tbody>
                </table>
                <br>
1 Year Warranty After Delivery Date.

<br><br><br>

<!-- UPDATE -->


           
                <table width="100%" style="margin-top:50px;">	
                    <tr>
                  
                        <td style="text-align:center;"><b>________________________</b></td>
                        <td style="text-align:center;"><b>________________________</b></td>
                    </tr>
                    <tr>
                    <td width="30%" style="text-align:center;">ហត្ថលេខា និងឈ្មោះអ្នកទិញ<br>Customer's Signature & Name</td>
                        <td width="30%" style="text-align:center;">ហត្ថលេខា និងឈ្មោះអ្នកលក់<br>Seller's Signature & Name</td>
                     
                    </tr>
                    
                </table>

                   		
                <br><br><br><br>
                
                
               

                <?= $Settings->invoice_view > 0 ? $this->gst->summary($rows, $return_rows, ($return_sale ? $inv->product_tax + $return_sale->product_tax : $inv->product_tax)) : ''; ?>

                សំគាល់: ច្បាប់ដើមសម្រាប់អ្នកទិញ ច្បាប់ចម្លងសម្រាប់អ្នកលក់ <br>
                Note: Original invoice for customer, copied for seller
              
                
            </div>

            <div class="order_barcodes text-center" style="display: none;">
                <img src="<?= admin_url('misc/barcode/' . $this->sma->base64url_encode($inv->reference_no) . '/code128/74/0/1'); ?>" alt="<?= $inv->reference_no; ?>" class="bcimg" />
                <br>
                <?= $this->sma->qrcode('link', urlencode(admin_url('sales/view/' . $inv->id)), 2); ?>
            </div>
            <div style="clear:both;"></div>
        </div>

        <div id="buttons" style="padding-top:10px; text-transform:uppercase;" class="no-print">
            <hr>
            <?php
            if ($message) {
                ?>
                <div class="alert alert-success">
                    <button data-dismiss="alert" class="close" type="button">×</button>
                    <?=is_array($message) ? print_r($message, true) : $message; ?>
                </div>
                <?php
            } ?>
            <?php
            if ($modal) {
                ?>
                <div class="btn-group btn-group-justified" role="group" aria-label="...">
                    <div class="btn-group" role="group">
                        <?php
                        if ($pos->remote_printing == 1) {
                            echo '<button onclick="window.print();" class="btn btn-block btn-primary">' . lang('print') . '</button>';
                        // echo '<button onclick="printDot();" class="btn btn-block btn-default">' . lang('print_dot') . '</button>';
                        } else {
                            echo '<button onclick="return printReceipt()" class="btn btn-block btn-primary">' . lang('print') . '</button>';
                        } ?>
                    </div>
                    <div class="btn-group" role="group">
                        <a class="btn btn-block btn-success" href="#" id="email"><?= lang('email'); ?></a>
                    </div>
                    <div class="btn-group" role="group">
                        <button type="button" class="btn btn-default" data-dismiss="modal"><?= lang('close'); ?></button>
                    </div>
                </div>
                <?php
            } else {
                ?>
                <span class="pull-right col-xs-12">
                    <?php
                    if ($pos->remote_printing == 1) {
                        echo '<button onclick="window.print();" class="btn btn-block btn-primary">' . lang('print') . '</button>';
                      //  echo '<button onclick="printDot();" class="btn btn-block btn-default">' . lang('print_dot') . '</button>';
                    } else {
                        echo '<button onclick="return printReceipt()" class="btn btn-block btn-primary">' . lang('print') . '</button>';
                        echo '<button onclick="return openCashDrawer()" class="btn btn-block btn-default">' . lang('open_cash_drawer') . '</button>';
                    } ?>
                </span>
                <?php //  <span class="pull-left col-xs-12"><a class="btn btn-block btn-success" href="#" id="email"><?= lang('email'); ?</a></span> ?>
                <span class="col-xs-12">
                    <a class="btn btn-block btn-warning" href="<?= admin_url('pos'); ?>"><?= lang('back_to_pos'); ?></a>
                </span>
                <?php
            }
            if ($pos->remote_printing == 1) {
                ?>
                <div style="clear:both;"></div>
                <div class="col-xs-12" style="background:#F5F5F5; padding:10px; display:none">
                    <p style="font-weight:bold;">
                        Please don't forget to disable the header and footer in browser print settings. You can set Zoom/Scale as you need.
                    </p>
                    <p style="text-transform: capitalize;">
                        <strong>FF:</strong> File &gt; Print Setup &gt; Margin &amp; Header/Footer Make all --blank--
                    </p>
                    <p style="text-transform: capitalize;">
                        <strong>chrome:</strong> Menu &gt; Print &gt; Disable Header/Footer in Option &amp; Set Margins to None
                    </p>
                </div>
                <?php
            } ?>
            <div style="clear:both;"></div>
        </div>
    </div>

    <?php
    if (!$modal) {
        ?>
        <script type="text/javascript" src="<?= $assets ?>js/jquery-2.0.3.min.js"></script>
        <script type="text/javascript" src="<?= $assets ?>js/bootstrap.min.js"></script>
        <script type="text/javascript" src="<?= $assets ?>js/jquery.dataTables.min.js"></script>
        <script type="text/javascript" src="<?= $assets ?>js/custom.js"></script>
        <?php
    }
    ?>
    <script type="text/javascript">
        $(document).ready(function () {
            $('#email').click(function () {
                bootbox.prompt({
                    title: "<?= lang('email_address'); ?>",
                    inputType: 'email',
                    value: "<?= $customer->email; ?>",
                    callback: function (email) {
                        if (email != null) {
                            $.ajax({
                                type: "post",
                                url: "<?= admin_url('pos/email_receipt') ?>",
                                data: {<?= $this->security->get_csrf_token_name(); ?>: "<?= $this->security->get_csrf_hash(); ?>", email: email, id: <?= $inv->id; ?>},
                                dataType: "json",
                                success: function (data) {
                                    bootbox.alert({message: data.msg, size: 'small'});
                                },
                                error: function () {
                                    bootbox.alert({message: '<?= lang('ajax_request_failed'); ?>', size: 'small'});
                                    return false;
                                }
                            });
                        }
                    }
                });
                return false;
            });
        });
        function printDot() {
            var mywindow = window.open('', 'sma_pos_print', 'height=400,width=250');
            mywindow.document.write('<html><head><title>CashDrawer</title>');
            mywindow.document.write('</head><body>.</body></html>');
            mywindow.print();
            mywindow.close();
            return true;
        }

        <?php
        if ($pos_settings->remote_printing == 1) {
            ?>
            $(window).load(function () {
                window.print();
                return false;
            });
            <?php
        }
        ?>

    </script>
    <?php /* include FCPATH.'themes'.DIRECTORY_SEPARATOR.$Settings->theme.DIRECTORY_SEPARATOR.'views'.DIRECTORY_SEPARATOR.'pos'.DIRECTORY_SEPARATOR.'remote_printing.php'; */ ?>
    <?php include 'remote_printing.php'; ?>
    <?php
    if ($modal) {
        ?>
    </div>
</div>
</div>
<?php
    } else {
        ?>
</body>
</html>
<?php
    }
?>
