<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');

/**
 * Model to handle categories
 * @author: Sridhar Balasubramanian
 * @url: http://sridharb.com
 **/
class Category_model extends CI_Model {

    private $default_table = 'categories';
    /**
     * Add the category details
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
     * Category update
     * @access public
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
     * Get particular category details
     * @access public
     * @param int $idcategory
     * @return mixed
     */
    public function get($idcategory) {
        $category = $this->db->get_where($this->default_table, array('idcategory' => $idcategory), 1);
        if(!$category) {
            return FALSE;
        }
        return $category->row();
    }
    /**
     * Get all categories
     * @access public
     * @return mixed
     */
    public function get_all() {
        if($categories = $this->db->get($this->default_table)) {
            return $categories->result();
        }
        return FALSE;
    }
    /**
     * Get catory for title
     * @access public
     * @param string $title
     * @return mixed
     */
    public function get_by_category($title) {
        $category = $this->db->get_where($this->default_table, array('title' => $title), 1);
        if(!$category) {
            return FALSE;
        }
        return $category->row();
    }
    
    /**
     * Get category details by news id
     * @access public
     * @param int $idpost
     * @return mixed
     */
    public function get_by_idpost($idpost) {
        $this->load->model('post_category_model', 'pcm');
        return $this->pcm->get_category_by_idpost($idpost);
    }

}