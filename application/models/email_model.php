<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Email_model extends CI_Model {

	public function __construct() {
		parent::__construct();
		$this->load->library('email');
		define("ADMIN_EMAIL", "ubsi.apsi@gmail.com");
	}

	/**
	 * send email
	 * @param $to, $subject, $msg
	 */
	public function send_email($to, $subject, $msg) {
		$this->email->from('ubsi.apsi@gmail.com', 'PT Aneka Sinar Abadi');
		$this->email->to($to);
		$this->email->subject($subject);
		$this->email->message($msg);
		$this->email->send();
	}

	/**
	 * send email when customer order from checkout page
	 * @param $to, $subject, $msg
	 */
	public function customer_order($to, $sale) {
		$subject = 'Customer Order-'.$sale->first_row()->order_no;
		$data['sale'] = $sale;
		$msg = $this->load->view('email/customer_order',$data, TRUE);
		$this->send_email($to, $subject, $msg);
		$this->send_email(ADMIN_EMAIL, $subject, $msg);
	}

	/**
	 * send email when customer confirm order payment
	 * @param $to, $subject, $msg
	 */
	public function customer_payment_confirmation($to, $sale) {
		$subject = 'Customer Order-'.$sale->first_row()->order_no;
		$data['sale'] = $sale;
		$msg = $this->load->view('email/customer_payment_confirmation',$data, TRUE);
		$this->send_email($to, $subject, $msg);
		$this->send_email(ADMIN_EMAIL, $subject, $msg);
	}

	/**
	 * send email when order shipped
	 * @param $to, $subject, $msg
	 */
	public function sale_admin_shipped($to, $sale) {
		$subject = 'Customer Order-'.$sale->first_row()->order_no;
		$data['sale'] = $sale;
		$msg = $this->load->view('email/admin_sale_shipped',$data, TRUE);
		$this->send_email($to, $subject, $msg);
		$this->send_email(ADMIN_EMAIL, $subject, $msg);
	}	

	/**
	 * send email when order paid
	 * @param $to, $subject, $msg
	 */
	public function sale_admin_paid($to, $sale) {
		$subject = 'Customer Order-'.$sale->first_row()->order_no;
		$data['sale'] = $sale;
		$msg = $this->load->view('email/admin_sale_paid',$data, TRUE);
		$this->send_email($to, $subject, $msg);
		$this->send_email(ADMIN_EMAIL, $subject, $msg);
	}

	/**
	 * send email when product was recived by customer
	 * @param $to, $subject, $msg
	 */
	public function sale_admin_recived($to, $sale) {
		$subject = 'Customer Order-'.$sale->first_row()->order_no;
		$data['sale'] = $sale;
		$msg = $this->load->view('email/admin_sale_recived',$data, TRUE);
		$this->send_email($to, $subject, $msg);
		$this->send_email(ADMIN_EMAIL, $subject, $msg);
	}


	// email for supplier
	public function purchase_admin_shipped() {
		// code here
	}	

	public function purchase_admin_paid() {
		// code here
	}

	public function purchase_admin_recived() {
		// code here
	}	

}

/* End of file Email_model.php */
/* Location: ./application/models/Email_model.php */