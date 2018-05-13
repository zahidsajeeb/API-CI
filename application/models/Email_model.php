<?php

class Email_model extends CI_Model {

    public function __construct() {
        $this->load->database();
    }

    public function insert_data($receiver_email, $sender_email, $subject, $body, $auth_key, $user_id, $user_name,$ret,$message) {
        $sql = "INSERT INTO mail (sender_email,receiver_email,subject,body,auth_key,user_id,username,status,message)VALUES('$sender_email','$receiver_email','$subject','$body','$auth_key','$user_id','$user_name','$ret','$message')";
        $query = $this->db->query($sql);
    }
    
    public function insert_error_data($user_id,$ret,$err_message){
        $sql="INSERT INTO mail(user_id,status,message)VALUES('$user_id','$ret','$err_message')";
        $query = $this->db->query($sql);
    }

}
