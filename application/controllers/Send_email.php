<?php

defined('BASEPATH') OR exit('No direct script access allowed');

use PHPMailer\PHPMailer\PHPMailer;
use PHPMailer\PHPMailer\Exception;

class Send_email extends CI_Controller {

    public function __construct() {
        parent::__construct();
//        if (!$this->session->userdata('user_id')){
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
    
    public function test_mail(){
        $data['header'] = $this->load->view('admin/header', '', true);
        $data['menu']   = $this->load->view('admin/menu', '', true);
        $data['footer'] = $this->load->view('admin/footer', '', true);

        $this->load->view('mail_form', $data);
    }

    public function mail_send() {

//        $url = "www.google.com/9";
//        $ch = curl_init($url);
//        curl_setopt($ch, CURLOPT_RETURNTRANSFER, TRUE);
//        curl_exec($ch);
//        $ret = curl_getinfo($ch,CURLINFO_HTTP_CODE);
////        $status = curl_getinfo($ch, CURLINFO_HTTP_CODE);
////        print "<pre>";
////        print_r($ret);
////        print "</pre>";



        $auth_key = '';
        $authenticationKey = '123456';
        $headers = $this->input->request_headers();
        foreach ($headers as $k => $v) {
            if ($k == 'auth_key') {
                $auth_key = $v;
            }
        }
        
//      print_r($this->input->request_headers['auth_key']);
//      exit();

        $this->load->helper(array('form', 'url'));
        $this->load->library('form_validation');
        $this->form_validation->set_rules('sender_email', 'Sender Email', 'required');
        $this->form_validation->set_rules('receiver_email', 'Receiver Email', 'required');
        $this->form_validation->set_rules('subject', 'Subject', 'required');
        $this->form_validation->set_rules('body', 'Body', 'required');
        $this->form_validation->set_rules('user_id', 'User ID', 'required');
        $this->form_validation->set_rules('username', 'User Name', 'required');
        
//        print_r($this->input->server(NULL));
//        return;
        
      
        if ($this->form_validation->run() == FALSE) {
            $this->output->set_output(json_encode(array(array('Response' => "Error"), array('Message' => $this->form_validation->error_array()))));
            return false;
        }
        
        $sender_email       =   $data['sender_email']    = $this->input->post('sender_email');
        $receiver_email     =   $data['receiver_email']  = $this->input->post('receiver_email');
        $subject            =   $data['subject']         = $this->input->post('subject');
        $body               =   $data['body']            = $this->input->post('body');
        $user_id            =   $data['user_id']         = $this->input->post('user_id');
        $user_name          =   $data['username']        = $this->input->post('username');
        $auth_key           =   $data['auth_key']        = $auth_key;
        
        $request=array(
            'Status'=> $this->input->server('REDIRECT_STATUS')
        );
        $ret=$this->input->server('REDIRECT_STATUS');

//      $this->Email_model->insert_data($data);
        $mail = new PHPMailer(true);
        try {
            $mail = new PHPMailer();
            
//            $mail->SMTPDebug = 2;                                
//            $mail->isSMTP();                                      
//            $mail->Host = 'smtp.gmail.com';                      
//            $mail->SMTPAuth = true;                               
//            $mail->Username = 'phpexpart007@gmail.com';          
//            $mail->Password = 'zahid100sajeeb';                
//            $mail->SMTPSecure = 'tls';                            
//            $mail->Port = 587; 
            
            //Recipients
            $mail->setFrom($sender_email, 'Roobt');
            $mail->addAddress($data['receiver_email'], 'Receiver');     // Add a recipient
            $mail->isHTML(true);                                        // Set email format to HTML
            $mail->Subject = $data['subject'];
            $mail->Body = $data['body'];

            if ($mail->Send()){
//              $this->Email_model->insert_data($receiver_email, $sender_email, $subject, $body, $auth_key, $user_id, $user_name, $ret);
//              $result = ['res' => ['response' => 'success'], 'msg' => ["message" => $this->db->insert_id()]];
                
                if($ret=="200"){
                    $message="OK";
                }
               
                $this->Email_model->insert_data($receiver_email, $sender_email, $subject, $body, $auth_key, $user_id, $user_name,$ret,$message);
                $result = array(array("response" => 'success'), array("message" => $this->db->insert_id()), $request);
                echo json_encode($result);
            }
            else{
                echo $mail->ErrorInfo;
                $err_message=$mail->ErrorInfo;
                $this->Email_model->insert_error_data($user_id,$ret,$err_message);
            }
        } catch (Exception $e){
            echo 'Message could not be sent. Mailer Error:', $e->errorMessage();
            
          
        }
    }

}
