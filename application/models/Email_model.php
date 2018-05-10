<?php

class Email_model extends CI_Model {

    public function __construct() {
        $this->load->database();
    }

    public function insert_data($receiver_email, $sender_email, $subject, $body, $auth_key, $user_id, $user_name) {
//        $this->db->insert('mail', $data);
//      $sql= "INSERT INTO Customers (CustomerName, ContactName, Address, City, PostalCode, Country)VALUES ('Cardinal','Tom B. Erichsen','Skagen 21','Stavanger','4006','Norway')";
        $sql = "INSERT INTO mail (sender_email,receiver_email,subject,body,auth_key,user_id,username)VALUES('$sender_email','$receiver_email','$subject','$body','$auth_key','$user_id','$user_name')";
        $query = $this->db->query($sql);
        //  return $query->result();
    }

}
