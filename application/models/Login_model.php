<?php

class Login_model extends CI_Model{
    public function userLoginCheck($username,$password)
    {
        $this->db->select('*');
        $this->db->from('user_login');
        $this->db->where('username',$username);
        $this->db->where('password',$password);

        $query_result=$this->db->get();
        $result=$query_result->row();
        return $result;
    }
}