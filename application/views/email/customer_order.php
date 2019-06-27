<h1>Order Number: <?php echo $sale->first_row()->order_no ?></h1>

<p>Hi <?php echo $sale->first_row()->customer_name ?>,</p>
<p>Order Anda telah kami terima! Lakukan pembayaran dan konfirmasi pembayaran agar pesanan dapat kami proses secepatnya.</p>
<p>Untuk melakukan pembayaran, Anda bisa melakukan transfer ke nomer rekening di bawah ini :</p>
<p>BRI 12345678 PT Aneka Sinar Abadi </p>
<p>Setelah melakukan transfer, segera lakukan konfirmasi pembayaran dengan cara klik <a href="<?php echo site_url('payment-confirmation') ?>">disini</a> agar pesanan Anda dapat kami proses secepatnya untuk segera dikirim.</p>
<p>Terimakasih!</p>