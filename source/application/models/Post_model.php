<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');

/**
 * Model to handle news posts
 * @author: Sridhar Balasubramanian
 * @url: http://sridharb.com
 **/
class Post_model extends CI_Model {

    private $default_table = 'posts';
    
    /**
     * Insert news
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
     * update news data
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
     * Delete the post by passing the id
     * @access public
     * @param int $idpost
     * @return mixed
     */
    public function delete($idpost) {
        return $this->db->delete($this->default_table, array('idpost' => $idpost));
    }

    /**
     * Getting particular post by passing id
     * @access public
     * @param int $idpost
     * @return mixed
     */
    public function get($idpost) {
        $post = $this->db->get_where($this->default_table, array('idpost' => $idpost), 1);
        if(!$post) {
            return FALSE;
        }
        return $post->row();
    }
    
    /**
     * Getting latest post
     * @access public
     * @param int $count
     * @return int
     */
    public function get_posts($count = 5) {
        $this->db->order_by('add_date', 'desc');
        $posts = $this->db->get($this->default_table, $count);
        if(!$posts) {
            return FALSE;
        }
        return $posts->result();
    }
    
    /**
     * Get all the posts
     * @access public
     * @return mixed
     */
    public function get_all() {
        $this->db->order_by('add_date', 'desc');
        $posts = $this->db->get($this->default_table);
        if(!$posts) {
            return FALSE;
        }
        return $posts->result();
    }
    
    /**
     * Get post for given keyword
     * @access public
     * @param string $keyword
     * @return mixed
     */
    public function get_by_keyword($keyword) {
        $this->db->like('title', $keyword);
        $this->db->or_like('body', $keyword);
        $this->db->order_by('add_date', 'desc');
        $posts = $this->db->get($this->default_table);
        if(!$posts) {
            return FALSE;
        }
        return $posts->result();
    }
    
    /**
     * Get post by userid
     * @access public
     * @param int $iduser
     * @return mixed
     */
    public function get_by_iduser($iduser) {
        $this->db->order_by('add_date', 'desc');
        $posts = $this->db->get_where($this->default_table, array('iduser' => $iduser));
        if(!$posts) {
            return FALSE;
        }
        return $posts->result();
    }
    
    /**
     * Get post by tag id
     * @access public
     * @param int $idtag
     * @return mixed
     */
    public function get_by_idtag($idtag) {
        $this->load->model('post_tag_model', 'ptm');
        return $this->ptm->get_posts_by_idtag($idtag);
    }
    
    /**
     * Get post by category id
     * @access public
     * @param int $idcategory
     * @return mixed
     */
    public function get_by_idcategory($idcategory) {
        $this->load->model('post_category_model', 'pcm');
        return $this->pcm->get_posts_by_idcategory($idcategory);
    }

}