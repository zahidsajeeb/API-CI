<?php
class Email_model extends CI_Model {

    public function __construct()
    {
        $this->load->database();
    }

    public function insert_data($data){
        $this->db->insert('user', $data);
        
    }
}