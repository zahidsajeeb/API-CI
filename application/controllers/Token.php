<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class Token extends CI_Controller {

//    public function __construct() {
//        parent::__construct();
//        // $this->load->library('My_PHPMailer');
//        $this->load->database();
//        $this->load->model('Token_model');
//        $this->load->library('form_validation');
//        $this->load->helper('url');
//    }

    public function __construct() {
        parent::__construct();
        if (!$this->session->userdata('user_id')) {
            redirect('login');
        }
        $this->load->database();
        $this->load->model('Token_model');
        $this->load->library('form_validation');
        $this->load->helper('url');
    }

    public function index() {
        $data['user_id'] = $this->session->userdata('user_id');
        $this->load->model('Token_model');
        $data['result'] = $this->Token_model->user_all_token($data['user_id']);

        $data['header'] = $this->load->view('header', '', true);
        $data['menu'] = $this->load->view('menu', '', true);
        $data['footer'] = $this->load->view('footer', '', true);
        
        $this->load->view('token_page', $data);
    }

    public function create() {
        $data['header'] = $this->load->view('header', '', true);
        $data['menu'] = $this->load->view('menu', '', true);
        $data['footer'] = $this->load->view('footer', '', true);

        $this->load->view('token_create_page', $data);
    }

    public function store() {
        $this->load->helper(array('form', 'url'));
        $data['token'] = $this->input->post('token');
        $data['user_id'] = $this->input->post('user_id');
        $this->Token_model->insert_token($data);
        $result = $this->load->view('token_page', $data);
        if ($result == TRUE) {
            redirect("Token/index");
        }
    }

    public function edit($token_id) {
        $this->load->model('Token_model');
        $data['result'] = $this->Token_model->edit_token($token_id);

        $data['header'] = $this->load->view('header', '', true);
        $data['menu'] = $this->load->view('menu', '', true);
        $data['footer'] = $this->load->view('footer', '', true);

        $this->load->view('token_edit_page', $data);
    }

    public function update() {
        $this->load->helper('url');
        $this->load->model('Token_model');
        $data['token_id'] = $this->input->post('token_id');
        $data['user_id'] = $this->input->post('user_id');
        $data['token'] = $this->input->post('token');

        $result = $this->Token_model->update_token($data);

        if ($result == TRUE) {
            redirect("Token/index");
        }
    }

    public function delete($token_id) {
        $this->load->model('Token_model');
        $result = $this->Token_model->delete_token($token_id);
        if ($result == TRUE) {
            redirect("Token/index");
        }
    }

    public function delete_user_info($user_id) {
        $this->load->model('user_login'); // Loading a Model
        $this->user_login->delete_user_data($user_id);
        echo 'Delete Data Successfully';
    }
    
    
//  -------------------- Admin Panel -------------------------------
    
    public function all_token(){
        $this->load->model('Token_model');
        
        $data['header'] = $this->load->view('admin/header', '', true);
        $data['menu']   = $this->load->view('admin/menu', '', true);
        $data['footer'] = $this->load->view('admin/footer', '', true);
        
        $data['result']  = $this->Token_model->get_all_token();
        $this->load->view('admin/token_view',$data);
    }

}
