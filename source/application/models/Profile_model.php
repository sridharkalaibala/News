<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');

/**
 * Model to handle user related actions
 * @author: Sridhar Balasubramanian
 * @url: http://sridharb.com
 **/
class Profile_model extends CI_Model {

    private $default_table = 'profiles';
    /**
     * Add profile data
     * @access public
     * @param array $data
     * @return mixed
     */
    public function add($data) {
        if($this->db->insert($this->default_table, $data)){
            return $this->db->insert_id();
        }

        return FALSE;
    }
    
    /**
     * update profile data
     * @param array $data
     * @param array $where
     * @return mixed
     */
    public function update($data, $where) {
        if($this->db->update($this->default_table, $data, $where)) {
            return $this->db->affected_rows();
        }
        return FALSE;
    }
    
   /**
    * Get profile details by id
    * @access public
    * @param int $idprofile
    * @return mixed
    */
    public function get($idprofile) {
        $profile = $this->db->get_where($this->default_table, array('idprofile' => $idprofile), 1);
        if(!$profile) {
            return FALSE;
        }
        return $profile->row();
    }
    
    /**
     * Get profile by user id
     * @access public
     * @param int $iduser
     * @return mixed
     */
    public function get_by_iduser($iduser) {
        $profile = $this->db->get_where($this->default_table, array('iduser' => $iduser), 1);
        if(!$profile) {
            return FALSE;
        }
        return $profile->row();
    }
    
    /**
     * Get user details by profile id
     * @access public
     * @param int $idprofile
     * @return mixed
     */
    public function get_user($idprofile) {
        $profile = $this->get($idprofile);
        if(!$profile) {
            return FALSE;
        }
        $this->load->model('user_model', 'um');
        return $this->pm->get_by_iduser($profile->iduser);
    }

}