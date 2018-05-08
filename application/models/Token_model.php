<?php

class Token_model extends CI_Model {

    public function __construct() {
        $this->load->database();
    }

    public function insert_token($data) {
        $this->db->insert('token', $data);
    }

    public function user_all_token($user_id) {
        return $this->db
                        ->where('user_id', $user_id)
                        ->get('token')
                        ->row();
    }

    public function edit_token($token_id) {
        return $this->db
                        ->where('token_id', $token_id)
                        ->get('token')
                        ->row();
    }

    public function update_token($data) {
        return $this->db
                        ->where('token_id', $data['token_id'])
                        ->update('token', $data);
    }

    public function delete_token($token_id) {
        return $this->db
                        ->where('token_id', $token_id)
                        ->delete('token');
    }
    
//  --------------------  Admin Panel -------------------------------------
    
    public function get_all_token(){
        return $this->db
                      ->select('*')
                      ->get('token')
                      ->result();
    }

}
