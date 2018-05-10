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

        $date1    = $this->input->post('date1');
        $date2    = $this->input->post('date2');
        $email    = $this->input->post('email');
        $user_id  = $this->input->post('user_id');
        
        if($date1==""){
            if($date2==""){
                if($email==""){
                    $d['result'] = $this->Report_model->customer_report($user_id);
                }
                else{
                    $d['result'] = $this->Report_model->customer_report_email($user_id,$email);
                }
            }
            else{
                if($email==""){
                    $d['result'] = $this->Report_model->customer_report_date2($user_id,$date2);
                }
                else{
                    $d['result'] = $this->Report_model->customer_report_email_date2($user_id,$email,$date2);
                }
            }
        }
        else{
            if($date2==""){
                if($email==""){
                    $d['result'] = $this->Report_model->customer_report_date1($user_id,$date1);
                }
                else{
                    $d['result'] = $this->Report_model->customer_report_email_date1($user_id,$email,$date1);
                }
            }
            else{
                if($email==""){
                    $d['result'] = $this->Report_model->customer_report_date2_date1($user_id,$date2,$date1);
                }
                else{
                    $d['result'] = $this->Report_model->customer_report_email_date2_date1($user_id,$email,$date2,$date1);
                }
            }
        }
        
        
        
        
        
        
        
        
        
        

        //$d['result'] = $this->Report_model->report($date, $email, $user_id);
        

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

        $this->load->model('Report_model');

        $data['result'] = $this->Report_model->get_all_users();

        $this->load->view('admin/report_page', $data);
    }

    public function admin_generate_report() {
        $this->load->model('Report_model');

        $date1 = $this->input->post('date1');
        $date2 = $this->input->post('date2');
        $email = $this->input->post('email');
        $user_id = $this->input->post('user_id');


        if ($date1 == "") {
            if ($date2 == "") {
                if ($email == "") {
                    if ($user_id == "") {
                        $d['result'] = $this->Report_model->admin_report_all();
                    } 
                    else {
                        $d['result'] = $this->Report_model->admin_report_user($user_id);
                    }
                } 
                else {
                    if ($user_id == "") {
                        $d['result'] = $this->Report_model->admin_report_email($email);
                    } 
                    else {
                        $d['result'] = $this->Report_model->admin_report_user_email($user_id, $email);
                    }
                }
            } 
            else {
                if ($email == "") {
                    if ($user_id == "") {
                        $d['result'] = $this->Report_model->admin_report_date2($date2);
                    } 
                    else {
                        $d['result'] = $this->Report_model->admin_report_user_date2($user_id,$date2);
                    }
                } 
                else {
                    if ($user_id == "") {
                        $d['result'] = $this->Report_model->admin_report_email_date2($email,$date2);
                    } 
                    else {
                        $d['result'] = $this->Report_model->admin_report_user_email_date2($user_id, $email,$date2);
                    }
                }
            }
        }
        else{
            if ($date2 == "") {
                if ($email == "") {
                    if ($user_id == "") {
                        $d['result'] = $this->Report_model->admin_report_date1($date1);
                    } 
                    else {
                        $d['result'] = $this->Report_model->admin_report_user_date1($user_id,$date1);
                    }
                } 
                else {
                    if ($user_id == "") {
                        $d['result'] = $this->Report_model->admin_report_email_date1($email,$date1);
                    } 
                    else {
                        $d['result'] = $this->Report_model->admin_report_user_email_date1($user_id, $email,$date1);
                    }
                }
            } 
            else {
                if ($email == "") {
                    if ($user_id == "") {
                        $d['result'] = $this->Report_model->admin_report_date2_date1($date2,$date1);
                    } 
                    else {
                        $d['result'] = $this->Report_model->admin_report_user_date2_date1($user_id,$date2,$date1);
                    }
                } 
                else {
                    if ($user_id == "") {
                        $d['result'] = $this->Report_model->admin_report_email_date2_date1($email,$date2,$date1);
                    } 
                    else {
                        $d['result'] = $this->Report_model->admin_report_user_email_date2_date1($user_id, $email,$date2,$date1);
                    }
                }
            }
        }
        $d['header'] = $this->load->view('admin/header', '', true);
        $d['menu'] = $this->load->view('admin/menu', '', true);
        $d['footer'] = $this->load->view('admin/footer', '', true);
        $this->load->view('admin/report_view', $d);
    }

}
