<?php

defined('BASEPATH') OR exit('No direct script access allowed');

use PHPMailer\PHPMailer\PHPMailer;
use PHPMailer\PHPMailer\Exception;

// require 'vendor/autoload.php';



class Send_email extends CI_Controller {

    // The constuctor funtion
    public function __construct() {
        parent::__construct();
//        if (!$this->session->userdata('user_id')) {
//            redirect('login');
//        }
        $this->load->database();
        $this->load->model('Email_model');
        $this->load->library('form_validation');
        $this->load->helper('url');
    }

    public function index() {
        $data['header'] = $this->load->view('header', '', true);
        $data['menu'] = $this->load->view('menu', '', true);
        $data['footer'] = $this->load->view('footer', '', true);

        $this->load->view('mail_form', $data);
    }

    function index_post() {
        $data = array(
            'id_item' => $this->input->post('item_id'),
            'item_name' => $this->input->post('item_name'),
            'note' => $this->input->post('item_note'),
            'stock' => $this->input->post('item_stock'),
            'price' => $this->input->post('item_price'),
            'unit' => $this->input->post('item_unit')
        );
        $insert = $this->db->insert('m_item', $data);
        if ($insert) {
            $this->response($data, 200);
        } else {
            $this->response(array('status' => 'fail', 502));
        }
    }

    public function mail_send() {
        $auth_key = '';
        $authenticationKey = '123456';
        $headers = $this->input->request_headers();
        foreach ($headers as $k => $v) {
            if ($k == 'auth_key') {
                $auth_key = $v;
            }
        }
//         print_r($this->input->request_headers['auth_key']);
//         exit();
        $this->load->helper(array('form', 'url'));
        $this->load->library('form_validation');

        $this->form_validation->set_rules('sender_email', 'Sender Email', 'required');
        $this->form_validation->set_rules('receiver_email', 'Receiver Email', 'required');
        $this->form_validation->set_rules('subject', 'Subject', 'required');
        $this->form_validation->set_rules('body', 'Body', 'required');
        $this->form_validation->set_rules('user_id', 'User ID', 'required');

        if ($this->form_validation->run() == FALSE) {

            $this->output->set_output(json_encode(array('result' => 0, 'error' => $this->form_validation->error_array())));
            return false;
        }





        $sender_email = $data['sender_email'] = $this->input->post('sender_email');
        $receiver_email = $data['receiver_email'] = $this->input->post('receiver_email');
        $subject = $data['subject'] = $this->input->post('subject');
        $body = $data['body'] = $this->input->post('body');
        $user_id = $data['user_id'] = $this->input->post('user_id');
        $auth_key = $data['auth_key'] = $auth_key;

        if ($auth_key == $authenticationKey && $data['receiver_email'] != Null && $data['subject'] != Null && $data['body'] != Null) {
//            $this->Email_model->insert_data($data);
            $mail = new PHPMailer(true);
            try {
                $mail = new PHPMailer();
//        --------------------- Samad Bhai Code Start -----------------------------------
//        $str = Get_WebContent($Form_URL);
//        $subject = Get_Subject($str) ;
//        $mail->SMTPOptions = array(
//            'ssl' => array(
//            'verify_peer' => false,
//            'verify_peer_name' => false,
//            'allow_self_signed' => true
//            )
//          );
//          $mail->isHTML(true);
//          $mail->IsSMTP();
//          $mail->Username = $Mail_User_Name ;
//          $mail->Password = $Mail_User_Password ;
//          $mail->Mailer = "smtp";
//          $mail->AuthType = 'LOGIN' ;
//          $mail->SMTPDebug = 0;
//          $mail->SMTPAuth = true;
//          $mail->SMTPSecure = 'tls';
//          $mail->Host = 'mail.v4s.us';
//          $mail->Port = 587; 
//        --------------------- Samad Bhai Code Stop -----------------------------------

                $mail->SMTPDebug = 0;                                 // Enable verbose debug output
                $mail->isSMTP();                                     // Set mailer to use SMTP   
                $mail->Host = 'smtp.gmail.com';                       // Specify main and backup SMTP servers
                $mail->SMTPAuth = true;                               // Enable SMTP authentication
                $mail->Username = 'phpexpart007@gmail.com';           // SMTP username
                $mail->Password = 'zahid100sajeeb';                   // SMTP password
                $mail->SMTPSecure = 'tls';                            // Enable TLS encryption, `ssl` also accepted
                $mail->Port = 587;                                    // TCP port to connect to
                //Recipients

                $mail->setFrom('phpexpart007@gmail.com', 'Roobt');
                $mail->addAddress($data['receiver_email'], 'Receiver');     // Add a recipient
                $mail->isHTML(true);                                        // Set email format to HTML
                $mail->Subject = $data['subject'];
                $mail->Body = $data['body'];

                //$mail->send();
                //echo 'Message has been sent';

                if ($mail->Send()) {
                    $this->Email_model->insert_data($data);
//                  $result = ['res' => ['response' => 'success'], 'msg' => ["message" => $this->db->insert_id()]];
                    $result = array(array("response" => 'success'), array("message" => $this->db->insert_id()));
                } else {
                    $result = array('response' => 'error', 'error_message' => $mail->ErrorInfo);
                }
                echo json_encode($result);
            } catch (Exception $e) {
                echo 'Message could not be sent. Mailer Error:', $mail->ErrorInfo;
            }
        } else {
            //echo"Mail Not Send";
//          echo 'Message could not be sent. Mailer Error:', $mail->ErrorInfo;
        }
    }

    public function store() {
        $this->load->helper(array('form', 'url'));
        $data['sender_email'] = $this->input->post('sender_email');
        $data['receiver_email'] = $this->input->post('receiver_email');
        $data['subject'] = $this->input->post('subject');
        $data['body'] = $this->input->post('body');
        $this->Email_model->insert_data($data);
    }

}
