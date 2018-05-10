<?php

class Report_model extends CI_Model {
    
    public function customer_report($user_id){
        $sql="SELECT * FROM mail WHERE user_id='$user_id'";
        $query= $this->db->query($sql);
        return $query->result();
    }
    
    public function customer_report_email($user_id,$email){
        $sql="SELECT * FROM mail WHERE user_id='$user_id' AND (receiver_email='$email' OR sender_email='$email')";
        $query= $this->db->query($sql);
        return $query->result();
    }
    
    public function customer_report_date2($user_id,$date2){
        $sql="SELECT * FROM mail WHERE user_id='$user_id' AND datetime <='$date2'";
        $query= $this->db->query($sql);
        return $query->result();
    }
    
    public function customer_report_email_date2($user_id,$email,$date2){
        $sql="SELECT * FROM mail WHERE user_id='$user_id' AND datetime <='$date2' AND (receiver_email='$email' OR sender_email='$email')";
        $query= $this->db->query($sql);
        return $query->result();
    }
    
    public function customer_report_date1($user_id,$date1){
        $sql="SELECT * FROM mail WHERE user_id='$user_id' AND datetime >='$date1'";
        $query= $this->db->query($sql);
        return $query->result();
    }
    
    public function customer_report_email_date1($user_id,$email,$date1){
        $sql="SELECT * FROM mail WHERE user_id='$user_id' AND datetime >='$date1' AND (receiver_email='$email' OR sender_email='$email')";
        $query= $this->db->query($sql);
        return $query->result();
    }
    
    public function customer_report_date2_date1($user_id,$date2,$date1){
        $sql = "SELECT * FROM mail WHERE user_id='$user_id' datetime BETWEEN '$date1' AND '$date2'";
        $query = $this->db->query($sql);
        return $query->result();
    }
    
    public function  customer_report_email_date2_date1($user_id,$email,$date2,$date1){
        $sql = "SELECT * FROM mail WHERE user_id='$user_id' datetime BETWEEN '$date1' AND '$date2' AND (receiver_email='$email' OR sender_email='$email')";
        $query = $this->db->query($sql);
        return $query->result();
    }


//  -----------------  Admin Panel -------------------

    public function admin_report($date1, $date2, $email, $user_id) {
        $sql = "SELECT * FROM mail WHERE user_id='$user_id' AND datetime BETWEEN '$date1' AND '$date2' AND (receiver_email='$email' OR sender_email='$email')";
        $query = $this->db->query($sql);
        return $query->result();
    }

    public function admin_report_all() {
        $sql = "SELECT * FROM mail";
        $query = $this->db->query($sql);
        return $query->result();
    }

    public function admin_report_user($user_id) {
        $sql = "SELECT * FROM mail WHERE user_id='$user_id'";
        $query = $this->db->query($sql);
        return $query->result();
    }

    public function admin_report_email($email) {
        $sql = "SELECT * FROM mail WHERE (receiver_email='$email' OR sender_email='$email')";
        $query = $this->db->query($sql);
        return $query->result();
    }

    public function admin_report_user_email($user_id, $email) {
        $sql = "SELECT * FROM mail WHERE user_id='$user_id' AND (receiver_email='$email' OR sender_email='$email')";
        $query = $this->db->query($sql);
        return $query->result();
    }

    public function admin_report_date2($date2) {
        $sql = "SELECT * FROM mail WHERE datetime <='$date2'";
        $query = $this->db->query($sql);
        return $query->result();
    }

    public function admin_report_user_date2($user_id, $date2) {
        $sql = "SELECT * FROM mail WHERE user_id='$user_id' AND datetime <='$date2'";
        $query = $this->db->query($sql);
        return $query->result();
    }

    public function admin_report_email_date2($email, $date2) {
        $sql = "SELECT * FROM mail WHERE datetime <='$date2' AND (receiver_email='$email' OR sender_email='$email')";
        $query = $this->db->query($sql);
        return $query->result();
    }

    public function admin_report_user_email_date2($user_id, $email, $date2) {
        $sql = "SELECT * FROM mail WHERE user_id='$user_id' AND datetime <='$date2' AND (receiver_email='$email' OR sender_email='$email')";
        $query = $this->db->query($sql);
        return $query->result();
    }

    public function admin_report_date1($date1) {
        $sql = "SELECT * FROM mail WHERE datetime >='$date1'";
        $query = $this->db->query($sql);
        return $query->result();
    }

    public function admin_report_user_date1($user_id, $date1) {
        $sql = "SELECT * FROM mail WHERE user_id='$user_id' AND datetime >='$date1'";
        $query = $this->db->query($sql);
        return $query->result();
    }

    public function admin_report_email_date1($email, $date1) {
        $sql = "SELECT * FROM mail WHERE datetime >='$date1' AND (receiver_email='$email' OR sender_email='$email')";
        $query = $this->db->query($sql);
        return $query->result();
    }

    public function admin_report_user_email_date1($user_id, $email, $date1) {
        $sql = "SELECT * FROM mail WHERE user_id='$user_id' AND datetime >='$date1' AND (receiver_email='$email' OR sender_email='$email')";
        $query = $this->db->query($sql);
        return $query->result();
    }

    public function admin_report_date2_date1($date2, $date1) {
        $sql = "SELECT * FROM mail WHERE datetime BETWEEN '$date1' AND '$date2'";
        $query = $this->db->query($sql);
        return $query->result();
    }

    public function admin_report_user_date2_date1($user_id, $date2, $date1) {
        $sql = "SELECT * FROM mail WHERE user_id='$user_id' AND datetime BETWEEN '$date1' AND '$date2'";
        $query = $this->db->query($sql);
        return $query->result();
    }

    public function admin_report_email_date2_date1($email, $date2, $date1) {
        $sql = "SELECT * FROM mail WHERE datetime BETWEEN '$date1' AND '$date2' AND (receiver_email='$email' OR sender_email='$email')";
        $query = $this->db->query($sql);
        return $query->result();
    }

    public function admin_report_user_email_date2_date1($user_id, $email, $date2, $date1) {
        $sql = "SELECT * FROM mail WHERE user_id='$user_id' AND datetime BETWEEN '$date1' AND '$date2' AND (receiver_email='$email' OR sender_email='$email')";
        $query = $this->db->query($sql);
        return $query->result();
    }

    public function get_all_users() {
        $sql = "SELECT * FROM mail GROUP BY user_id";
        $query = $this->db->query($sql);
        return $query->result();
    }

    public function admin_report4($date1, $date2, $email) {
        $sql = "SELECT * FROM mail WHERE datetime BETWEEN '$date1' AND '$date2' AND (receiver_email='$email' OR sender_email='$email')";
        $query = $this->db->query($sql);
        return $query->result();
    }

}
