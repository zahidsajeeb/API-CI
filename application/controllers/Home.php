<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class Home extends CI_Controller {

    public function __construct() {
        parent::__construct();
        if (!$this->session->userdata('user_id')) {
            redirect('login');
        }
        $this->load->database();
        $this->load->helper('url');
    }

    public function user_index(){
        $data['header'] = $this->load->view('header', '', true);
        $data['menu'] = $this->load->view('menu', '', true);
        $data['footer'] = $this->load->view('footer', '', true);
        $this->load->view('home', $data);
    }

    public function admin_index() {
        $data['header'] = $this->load->view('admin/header', '', true);
        $data['menu'] = $this->load->view('admin/menu', '', true);
        $data['footer'] = $this->load->view('admin/footer', '', true);
        $this->load->view('admin/admin_home', $data);
    }

}
