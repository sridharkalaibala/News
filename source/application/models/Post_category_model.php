<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');

/**
 * Model to handle category-post relation
 * @author: Sridhar Balasubramanian
 * @url: http://sridharb.com
 **/
class Post_category_model extends CI_Model {

    private $default_table = 'post_categories';
    /**
     * add category id and post id details
     * @access public
     * @param array $data
     * @return mixed
     */
    public function add($data) {
        if(!isset($data['added_by']) && $this->user->id()) {
            $data['added_by'] = $this->user->id();
        }
        if($this->db->insert($this->default_table, $data)){
            return $this->db->insert_id();
        }

        return FALSE;
    }

    /**
     * update the category and post relationship
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
     * Getting category details by passing post id
     * @access public
     * @param int $idpost
     * @return mixed
     */
    public function get_category_by_idpost($idpost) {
        $post_categories = $this->db->get_where($this->default_table, array('idpost' => $idpost));
        if(!$post_categories) {
            return FALSE;
        }
        $this->load->model('category_model', 'cm');
        $categories = array();
        foreach($post_categories->result() as $pc) {
            $categories[] = $this->cm->get($pc->idcategory);
        }
        return $categories;
    }
    /**
     * Get post details by passing category id
     * @access public
     * @param int $idcategory
     * @return mixed
     */
    public function get_posts_by_idcategory($idcategory) {
        $this->db->order_by('add_date', 'desc');
        $post_categories = $this->db->get_where($this->default_table, array('idcategory' => $idcategory));
        if(!$post_categories) {
            return FALSE;
        }
        $this->load->model('post_model', 'pm');
        $posts = array();
        foreach($post_categories->result() as $pc) {
            $posts[] = $this->pm->get($pc->idpost);
        }
        return $posts;
    }

}