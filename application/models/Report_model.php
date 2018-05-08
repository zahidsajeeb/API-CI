<?php

class Report_model extends CI_Model {

    public function report($date, $email, $user_id) {
        $sql = "SELECT * FROM user WHERE user_id='$user_id' AND datetime='$date' AND (receiver_email='$email' OR sender_email='$email')";
        $query = $this->db->query($sql);
        return $query->result();
    }

//  -----------------  Admin Panel -------------------

    public function admin_report($date, $email, $user_id) {
        $sql = "SELECT * FROM user WHERE user_id='$user_id' AND datetime='$date' AND (receiver_email='$email' OR sender_email='$email')";
        $query = $this->db->query($sql);
        return $query->result();
    }

}
