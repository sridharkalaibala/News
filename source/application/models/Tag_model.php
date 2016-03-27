<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');

/**
 * Model to handle tags
 * @author: Sridhar Balasubramanian
 * @url: http://sridharb.com
 **/
class Tag_model extends CI_Model {

    private $default_table = 'tags';
    
    /**
     * adding the tag details
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
     * update the tag details
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
     * Get thed tag details by passing tag id
     * @access public
     * @param int $idtag
     * @return mixed
     */
    public function get($idtag) {
        $tag = $this->db->get_where($this->default_table, array('idtag' => $idtag), 1);
        if(!$tag) {
            return FALSE;
        }
        return $tag->row();
    }
    
    /**
     * Get the all tags
     * @access public
     * @return mixed
     */
    public function get_all() {
        if($tags = $this->db->get()) {
            return $tags->result();
        }
        return FALSE;
    }
    
    /**
     * update the tag
     * @access public
     * @param string $tag
     * @return mixed
     */
    public function set_tag($tag) {
        if(strlen(trim($tag)) > 0) {
            if($idtag = $this->get_by_tag(strtolower(trim($tag)))) {
                return $idtag->idtag;
            }
            return $this->add(array('title' => strtolower(trim($tag))));
        }
    }
    
    /**
     * Get tag by title
     * @access public
     * @param string $title
     * @return mixed
     */

    public function get_by_tag($title) {
        $tag = $this->db->get_where($this->default_table, array('title' => $title), 1);
        if(!$tag) {
            return FALSE;
        }
        return $tag->row();
    }
    
    /**
     * Get tag details by post id
     * @access public
     * @param int $idpost
     * @return mixed
     */

    public function get_by_idpost($idpost) {
        $this->load->model('post_tag_model', 'ptm');
        return $this->ptm->get_tags_by_idpost($idpost);
    }

}