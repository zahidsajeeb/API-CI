<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class Login extends CI_Controller {

    public function __construct() {
        parent::__construct();
        $this->load->helper('form');
        $this->load->library('form_validation');
        $this->load->library('session');
        $this->load->model('Login_model');
    }

    public function index(){
        $this->load->view('login_form');
    }
    
    public function check_user_login(){
        $this->load->model('Login_model'); 
        $username = $this->input->post('username', true);
        $password = $this->input->post('password', true);
        $data['result'] = $result = $this->Login_model->userLoginCheck($username, $password);

        if ($result->status ==2)
            {
            $sessiondata = array();
            $sessiondata['user_id']   = $result->user_id;
            $sessiondata['username']  = $result->username;
            $sessiondata['is_login']  = TRUE;
            $this->session->set_userdata($sessiondata);
            
            $data['header']=$this->load->view('header','',true);
            $data['menu']  =$this->load->view('menu','',true);
            $data['footer']=$this->load->view('footer','',true);
            
            $this->load->view('home',$data);
            
            } 
            
            else if ($result->status ==1)
            {
            $sessiondata = array();
            $sessiondata['user_id'] = $result->user_id;
            $sessiondata['is_login'] = TRUE;
            $this->session->set_userdata($sessiondata);
            
            $data['header']=$this->load->view('admin/header','',true);
            $data['menu']=$this->load->view('admin/menu','',true);
            $data['footer']=$this->load->view('admin/footer','',true);
            
            $this->load->view('admin/admin_home',$data);
            
            } 
            else 
                {
            $meg['message'] = "User Id Or password Invalide! OR Your not Register Member";
            $this->session->set_userdata($meg);
            redirect("login/user_login");
        }
    }

    public function logout(){
        $this->session->unset_userdata('user_id', 'is_login');
        $meg['message'] = "You are successfully Logeout!";
        $this->session->set_userdata($meg);

        redirect("Login/index");
    }

//    public function user_logout() {
//        $this->session->unset_userdata('user_id', 'is_login');
//        $meg['message'] = "You are successfully Logeout!";
//        $this->session->set_userdata($meg);
//
//        redirect("login/user_login");
//    }
}
