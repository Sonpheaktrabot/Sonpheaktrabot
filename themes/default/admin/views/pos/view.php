<?php defined('BASEPATH') or exit('No direct script access allowed'); ?>
<?php if ($modal) {
    ?>
<div class="modal-dialog no-modal-header" role="document"><div class="modal-content">
    <div class="modal-body">
    <button type="button" class="close" data-dismiss="modal" aria-hidden="true"><i class="fa fa-2x">&times;</i></button>
    <?php
} else {
        ?><!doctype html>
    <html>
    <head>
                    <meta charset="utf-8">
                    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
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
                        #wrapper { max-width: 480px; margin: 0 auto; padding-top: 20px; }
                        .btn { margin-bottom: 5px; }
                        .table { border-radius: 3px; width:100%; border-collapse: collapse; margin-top:10px; margin-bottom:-10px;}
                        thead.mythead, tr.mythead {color:#000; }
                        tr.mythead, tr.mytotal {color:#000 !important; }
                        tr.mythead th, tr.mytotal th {color:#000 !important;}
                        tr.mytotal th {font-size: 14px;}
                        tr.mythead th.text-right {padding-right:10px !important;}
						thead.mythead th { padding:10px 0; color:#000 !important;}
						tfoot.mytfoot { border-top: 1px solid #000;}
                        .table th { vertical-align: middle !important; padding:5px; border-top:1px solid;}
                        .table td { vertical-align: middle !important; padding:5px; border-top:1px dotted;}
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
            <span class="col-xs-12">
                <a class="btn btn-block btn-warning" style="padding-top:20px; padding-bottom:20px; font-size:20px;" href="<?= admin_url('pos'); ?>"><?= lang("back_to_pos"); ?></a>
              
            </span>

               
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
            <div style="text-align:center;">
                 
                    <h3 style="text-transform:uppercase; font-size:25px"><?=$biller->company && $biller->company != '-' ? $biller->company : $biller->name;?></h3>
                    <?php
                 

               
                    if ($pos_settings->cf_title1 != '' && $pos_settings->cf_value1 != '') {
                   
                    }
                    if ($pos_settings->cf_title2 != '' && $pos_settings->cf_value2 != '') {
                       
                    }
                    echo '</p>';
                    ?>
                </div>
                <?php
                if ($Settings->invoice_view == 1 || $Settings->indian_gst) {
                    ?>
                    <div class="col-sm-12 text-center">
                        <h4 style="font-weight:bold;"><?=lang('tax_invoice'); ?></h4>
                    </div>
                    <?php
                }
                echo '<p>អត្រាប្តូរប្រាក់ 4100រៀល<br>';
                echo lang('កាលបរិច្ឆេទ') . ': ' . $this->sma->hrld($inv->date) . '<br>';
              
                if (!empty($inv->return_sale_ref)) {
                    echo '<p>' . lang('return_ref') . ': ' . $inv->return_sale_ref;
                    if ($inv->return_id) {
                        echo ' <a data-target="#myModal2" data-toggle="modal" href="' . admin_url('sales/modal_view/' . $inv->return_id) . '"><i class="fa fa-external-link no-print"></i></a><br>';
                    } else {
                        echo '</p>';
                    }
                }
                echo lang('អ្នកលក់') . ': ' . $created_by->first_name . ' ' . $created_by->last_name . '</p>';
                echo '<p>';
                echo lang('អតិថិជន') . ': ' . ($customer->company && $customer->company != '-' ? $customer->company : $customer->name);
                
                echo '</p>';
                ?>

                <div style="clear:both;"></div>
                <table class="table table-striped table-condensed">
                    
                    <thead class="mythead">
                        <tr class="mythead">
                            <th class="text-center" style="border-bottom: 1px solid;"><?=lang('ល.រ');?></th>
                            <th class="text-center" style="width: 40%; border-bottom: 1px solid;"><?=lang('បរិយាយ');?></th>
                            <th class="text-center" style="border-bottom: 1px solid;"><?=lang('ចំនួន');?></th>                           
                            <th class="text-center" style="border-bottom: 1px solid;"><?=lang('តម្លៃ');?></th>   
                                                   
                            <th class="text-center" style="border-bottom: 1px solid;"> <?=lang('បញ្ចុះតម្លៃ');?> </th>
                            
                            <th class="text-right" style="border-bottom: 1px solid;"><?=lang('សរុប');?></th>
                        </tr>
                    </thead>
                    <tbody>
                        <?php
                        $r           = 1; $category           = 0;
                        $tax_summary = [];
                        foreach ($rows as $row) {

                            echo '<tr>
                            <td style="text-align:center;">' . $r . '</td>
                            <td>' . product_name($row->product_name, ($printer ? $printer->char_per_line : null)) . ($row->variant ? ' (' . $row->variant . ')' : '') , ($row->serial_no ? '<br>' . $row->serial_no : '') . '<span class="text-left">' . ($row->tax_code ? '*' . $row->tax_code : '') . ' <br> ';
                                if (!empty($row->second_name)) {
                                    echo $row->second_name . '<br>';
                                }
                                if (!empty($row->comment)) {
                                    echo '<small>'.$row->comment . '</small></td>';
                                }

                            echo '<td  style="text-align:center;">' . $this->sma->formatQuantity($row->unit_quantity) . '</td>';
                            echo '<td  style="text-align:right;">$' . $Settings->symbol . $this->sma->formatMoney($row->real_unit_price) . '</td>';

                                                    
                                echo '<td style="text-align:right">' .  $row->discount . '</td>';
                           

                            echo '<td  style="text-align:right;">$' . $Settings->symbol . $this->sma->formatMoney($row->subtotal) . '</td></tr>';
                                


                            $r++;
                        }
                        if ($return_rows) {
                            echo '<tr class="warning"><td colspan="100%" class="no-border"><strong>' . lang('returned_items') . '</strong></td></tr>';
                            foreach ($return_rows as $row) {
                                if ($pos_settings->item_order == 1 && $category != $row->category_id) {
                                    $category = $row->category_id;
                                    echo '<tr><td colspan="100%" class="no-border"><strong>' . $row->category_name . '</strong></td></tr>';
                                }
                                echo '<tr><td colspan="2" class="no-border">#' . $r . ': &nbsp;&nbsp;' . product_name($row->product_name, ($printer ? $printer->char_per_line : null)) . ($row->variant ? ' (' . $row->variant . ')' : '') . ($row->serial_no ? '<br>' . $row->serial_no : '') . '<span class="pull-right">' . ($row->tax_code ? '*' . $row->tax_code : '') . '</span></td></tr>';
                                echo '<tr><td class="no-border border-bottom">' . $this->sma->formatQuantity($row->unit_quantity) . ' x ' . $this->sma->formatMoney($row->unit_price) . ($row->item_tax != 0 ? ' - ' . lang('tax') . ' <small>(' . ($Settings->indian_gst ? $row->tax : $row->tax_code) . ')</small> ' . $this->sma->formatMoney($row->item_tax) . ($row->hsn_code ? ' (' . lang($row->product_type == 'service' ? 'sac_code' : 'hsn_code') . ': ' . $row->hsn_code . ')' : '') : '') . '</td><td class="no-border border-bottom text-right">11' . $this->sma->formatMoney($row->subtotal) . '</td></tr>';

                             
                                $r++;
                            }
                        }

                        ?>

                            <tr>
                                <th></td>
                                <th  style="border-bottom: 1px solid #000;border-top: 1px solid #000;text-align:left"><?= lang("សរុប"); ?></th>
                                <th class="text-center" style="border-bottom: 1px solid #000;border-top: 1px solid #000;"><?= $this->sma->formatQuantity($inv->total_items)?></th>
                                <th style="border-bottom: 1px solid #000;border-top: 1px solid #000;"></td>
                                
                                <th colspan="2" style="text-align: right;border-bottom: 1px solid #000;border-top: 1px solid #000;">$<?=  $this->sma->formatMoney($return_sale ? (($inv->total + $inv->product_tax) + ($return_sale->total + $return_sale->product_tax)) : ($inv->total + $inv->product_tax));?></th>
                            </tr>


                            <?php
                        if ($inv->order_tax != 0) {
                            echo '<tr><th>' . lang('tax') . '</th><th class="text-right">' . $this->sma->formatMoney($return_sale ? ($inv->order_tax + $return_sale->order_tax) : $inv->order_tax) . '</th></tr>';
                        }
                        if ($inv->order_discount != 0) {
                            echo '<tr><th colspan="3" style="border-bottom: 1px solid #000;border-top: 1px solid #000;text-align:right;font-size:14px">' . lang('បញ្ចុះតម្លៃ') . '</th><th colspan="3" style="border-bottom: 1px solid #000;border-top: 1px solid #000;text-align:right;font-size:14px">$' .   $this->sma->formatMoney($return_sale ? ($inv->order_discount + $return_sale->order_discount) : $inv->order_discount) . '</th></tr>';
                        
                        }
                        if ($inv->shipping != 0) {
                            echo '<tr><th>' . lang('shipping') . '</th><th class="text-right">' . $this->sma->formatMoney($inv->shipping) . '</th></tr>';
                        }

                        if ($return_sale) {
                            if ($return_sale->surcharge != 0) {
                                echo '<tr><th>' . lang('return_surcharge') . '</th><th class="text-right">' . $this->sma->formatMoney($return_sale->surcharge) . '</th></tr>';
                            }
                        }

                        if ($Settings->indian_gst) {
                            if ($inv->cgst > 0) {
                                $cgst = $return_sale ? $inv->cgst + $return_sale->cgst : $inv->cgst;
                                echo '<tr><td>' . lang('cgst') . '</td><td class="text-right">' . ($Settings->format_gst ? $this->sma->formatMoney($cgst) : $cgst) . '</td></tr>';
                            }
                            if ($inv->sgst > 0) {
                                $sgst = $return_sale ? $inv->sgst + $return_sale->sgst : $inv->sgst;
                                echo '<tr><td>' . lang('sgst') . '</td><td class="text-right">' . ($Settings->format_gst ? $this->sma->formatMoney($sgst) : $sgst) . '</td></tr>';
                            }
                            if ($inv->igst > 0) {
                                $igst = $return_sale ? $inv->igst + $return_sale->igst : $inv->igst;
                                echo '<tr><td>' . lang('igst') . '</td><td class="text-right">' . ($Settings->format_gst ? $this->sma->formatMoney($igst) : $igst) . '</td></tr>';
                            }
                        }

                        if ($pos_settings->rounding || $inv->rounding != 0) {
                            ?>
                            <tr>
                                <th><?=lang('rounding'); ?></th>
                                <th class="text-right"><?= $this->sma->formatMoney($inv->rounding); ?></th>
                            </tr>
                            <tr>
                                <th><?=lang('grand_total'); ?></th>
                                <th class="text-right"><?=$this->sma->formatMoney($return_sale ? (($inv->grand_total + $inv->rounding) + $return_sale->grand_total) : ($inv->grand_total + $inv->rounding)); ?></th>
                            </tr>
                            <?php
                        } else { 
                            ?>

                            

                            <tr>
                                <th colspan="3" style="border-bottom: 1px solid #000;border-top: 1px solid #000;text-align:right; font-size:14px"><?=lang('តម្លៃសរុប') . '($)'; ?></th>
                                <th colspan="3" style="text-align: right;border-bottom: 1px solid #000;font-size:14px">$<?=  $this->sma->formatMoney($return_sale ? ($inv->grand_total + $return_sale->grand_total) : $inv->grand_total); ?></th>
                            </tr>

                            <tr>
                                <th colspan="3" style="border-bottom: 1px solid #000;border-top: 1px solid #000;text-align:right; font-size:14px"><?=lang('តម្លៃសរុប') . '(៛)'; ?></th>
                                <th colspan="3" style="text-align: right;border-bottom: 1px solid #000;font-size:14px"><?= number_format($return_sale ? ($inv->grand_total + $return_sale->grand_total) : $inv->grand_total * 4100); ?>៛</th>
                            </tr>

                            <?php  if ($payments) {  foreach ($payments as $payment) {?>

                                                                    <?php

                                    echo '<table class="well well-sm" style="margin-top:20px; margin-left:3px; width:97%;"><tbody>';
                                    echo '<tr>';
                                    if ($payment->paid_by == 'cash') {
                                        echo '<th rowspan="4" style="text-align:left;" width="30%">' . lang("បង់ដោយ") . ':<br>' . lang($payment->paid_by) . '</th>';
                                    } else {
                                        echo '<th rowspan="2" style="text-align:left;" width="30%">' . lang("បង់ដោយ") . ':<br>' . lang($payment->paid_by) . '</th>';   
                                    }
                                    echo '<th colspan="2" class="text-right">' . lang("ទឹកប្រាក់ទទួល​") . ' ($): </th>';
                                    echo '<th class="text-right" width="40%">$' . $this->sma->formatMoney($payment->pos_paid == 0 ? $payment->amount : $payment->pos_paid) . '</th></tr>';                             

                                    if ( $payment->pos_balance > 0) {

                                    echo '<tr><th colspan="2" class="text-right" style="border-top:1px dotted;">' . lang("ប្រាក់អាប់") . ' ($/៛): </th>';
                                   

                                    }
                                  

                                    ?>

                            
                            <th class="text-right" width="40%" style="border-top:1px dotted;">$<?= $payment->pos_balance > 0 ? $this->sma->formatMoney($payment->pos_balance) : 0 ?> (<?= number_format($payment->pos_balance*4100) ?> ៛)</th>
                           
                            </tbody></table>
                            <?php } }?>


                           

                            <?php
                        }
                        if ($inv->paid < ($inv->grand_total + $inv->rounding)) {
                            ?>
                            
                            <tr>
                                <th colspan="4" style="text-align: right;border-bottom: 1px solid #000;"><?=lang('paid_amount'); ?></th>
                                <th style="text-align: right;border-bottom: 1px solid #000;"><?=$this->sma->formatMoney($return_sale ? ($inv->paid + $return_sale->paid) : $inv->paid); ?></th>
                            </tr>


                            <tr>
                                <th><?=lang('due_amount'); ?></th>
                                <th class="text-right"><?=$this->sma->formatMoney(($return_sale ? (($inv->grand_total + $inv->rounding) + $return_sale->grand_total) : ($inv->grand_total + $inv->rounding)) - ($return_sale ? ($inv->paid + $return_sale->paid) : $inv->paid)); ?></th>
                            </tr>
                            <?php

                               echo '<button onclick="window.print();" class="btn btn-block btn-primary">' . lang('print') . '</button>';
                        } ?>

                    </tbody>

                    </table>
                

                <?= $Settings->invoice_view > 0 ? $this->gst->summary($rows, $return_rows, ($return_sale ? $inv->product_tax + $return_sale->product_tax : $inv->product_tax)) : ''; ?>

                <?= $customer->id != 1 && $customer->award_points != 0 && $Settings->each_spent > 0 ? '<p class="text-center">' . lang('this_sale') . ': ' . floor(($inv->grand_total / $Settings->each_spent) * $Settings->ca_point)
                . '<br>' . lang('total') . ' ' . lang('award_points') . ': ' . $customer->award_points . '</p>' : ''; ?>
                <?= $inv->note ? '<p class="text-center">' . $this->sma->decode_html($inv->note) . '</p>' : ''; ?>
                <?= $inv->staff_note ? '<p class="no-print"><strong>' . lang('staff_note') . ':</strong> ' . $this->sma->decode_html($inv->staff_note) . '</p>' : ''; ?>
                <?= $biller->invoice_footer ? '<p style="text-align:center">' . $this->sma->decode_html($biller->invoice_footer) . '</p>' : ''; ?>
            </div>
            
            <table style="text-align:center">
                <tr>
                <th width="50%"><?= '<img src="' . base_url('assets/uploads/qrkh.png' ) . '" alt="" width="130px">' ?></th>
                <th width="50%" ><?= '<img src="' . base_url('assets/uploads/qrusd.png' ) . '" alt="" width="130px">' ?></th>
                    
                </tr>
                
                
            </table>
          
            
            

<br>
           


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
