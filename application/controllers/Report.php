<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class Report extends CI_Controller {

    public function __construct() {
        parent::__construct();
        $this->load->helper('url');
        $this->load->model('Report_model');
        $this->load->library('session');

        if (!$this->session->userdata('user_id')) {
            redirect('login');
        }
    }

    public function index() {
        $data['user_id'] = $this->session->userdata('user_id');

        $data['header'] = $this->load->view('header', '', true);
        $data['menu'] = $this->load->view('menu', '', true);
        $data['footer'] = $this->load->view('footer', '', true);

        $this->load->view('report_page', $data);
    }

    public function report_page() {
        $this->load->view('report_view', $data);
    }

    public function generate_report() {
        $this->load->model('Report_model');
        
        $date      =  $this->input->post('date');
        $email     =  $this->input->post('email');
        $user_id   =  $this->input->post('user_id');

        $d['result'] = $this->Report_model->report($date,$email,$user_id);

        $d['header'] = $this->load->view('header', '', true);
        $d['menu'] = $this->load->view('menu', '', true);
        $d['footer'] = $this->load->view('footer', '', true);

        $this->load->view('report_view', $d);
    }

//  -----------------   Admin Panel  ---------------------------

    public function admin_report_page() {
        $data['header'] = $this->load->view('admin/header', '', true);
        $data['menu'] = $this->load->view('admin/menu', '', true);
        $data['footer'] = $this->load->view('admin/footer', '', true);

        $this->load->view('admin/report_page', $data);
    }

    public function admin_generate_report() {
        $this->load->model('Report_model');
//        $data['date']     =  $this->input->post('date');
//        $data['email']    =  $this->input->post('email');
//        $data['user_id']  =  $this->input->post('user_id');
        
        $date      =  $this->input->post('date');
        $email     =  $this->input->post('email');
        $user_id   =  $this->input->post('user_id');

        $d['result'] = $this->Report_model->admin_report($date,$email,$user_id);

        $d['header'] = $this->load->view('admin/header', '', true);
        $d['menu']   = $this->load->view('admin/menu', '', true);
        $d['footer'] = $this->load->view('admin/footer', '', true);
        
        $this->load->view('admin/report_view', $d);

   

       
    }

}
