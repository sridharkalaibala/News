<?php
defined('BASEPATH') OR exit('No direct script access allowed');
/**
 * Controller to handle the news display
 * @author: Sridhar Balasubramanian
 * @url: http://sridharb.com
 **/
class News extends CI_Controller {

    /**
     * Constructor
     * @access public
     * @return void Description
     */
    public function __construct() {
        parent::__construct();
        $this->load->model('post_model', 'news');
    }

    /**
     * Display the default news list page
     * @access public
     * @return void logged users how see the news list
     */
    public function index() {
        if(!is_logged_in()) {
            $this->template->alert(
                'Only members can access this page',
                'warning'
            );
            redirect('account/login');
            return;
        }
        $data['title'] = 'News archive | Public News';
        $data['news'] = $this->news->get_all();
        $this->template->view('news/list', $data);
    }
    /**
     * Loads list of news based on given category
     * @param int $idcategory
     * @access public
     * @return void Loads list of news based on given category id
     */
    
    public function category($idcategory) {

        $this->load->model('category_model', 'cm');
        $category = $this->cm->get($idcategory);

        $data['title'] = $category->title . ' | Public News';
        $data['news'] = $this->news->get_by_idcategory($idcategory);

        $this->template->view('news/list', $data);
    }
    
    /**
     * Loads list of news based on given tag
     * @access public
     * @param int $idtag
     * @return void
     */
    public function tag($idtag) {

        $this->load->model('tag_model', 'tm');
        $tag = $this->tm->get($idtag);

        $data['title'] = $tag->title . ' | Public News';
        $data['news'] = $this->news->get_by_idtag($idtag);

        $this->template->view('news/list', $data);
    }
    /**
     * Search the news based on given text
     * @access public
     * @param string $keyword
     * @return type void
     */
    public function search($keyword = '') {
        if(!is_logged_in()) {
            $this->template->alert(
                'Only members can access this page',
                'warning'
            );
            redirect('account/login');
            return;
        }

        if($this->input->method(TRUE) == 'POST' && $this->input->post('keyword')) {
            $keyword = preg_replace('/[^a-z0-9_\-]/', '', trim($this->input->post('keyword')));
        }
        $data['title'] = 'Search: ' . $keyword . ' | Public News';
        $data['news'] = $this->news->get_by_keyword($keyword);

        $this->template->view('news/list', $data);
    }
    /**
     * Generator the RSS feeds for latest 10 news
     * @access public
     * @return void load the rss xml feeds
     */
    public function rss() {
        $this->load->helper('xml');
        $this->load->helper('text');

        $data['news'] = $this->news->get_posts(10);

        $data['encoding'] = 'utf-8';
        $data['feed_url'] = base_url('news/feed');
        header("Content-Type: application/rss+xml");

        $this->template->view('news/rss', $data, FALSE, $this->template->get(), TRUE);
    }
    /**
     * detailed page for given news id
     * @param int $idpost
     * @return void
     */
    public function detail($idpost) {
        $post = $this->news->get($idpost);
        if(!$post) {
            $this->template->alert(
                'Could not load the requested item',
                'warning'
            );
            redirect('news');
            return;
        }

        $data['title'] = $post->title . ' | Public News';
        $data['news'] = $post;
        $data['author'] = get_user_profile($data['news']->iduser);

        $this->template->view('news/detail', $data);
    }
    /**
     * Generate the pdf for given news id
     * @param int $idpost
     * @return void
     */
    public function pdf($idpost) {
        $post = $this->news->get($idpost);
        if(!$post) {
            $this->template->alert(
                'Could not load the requested item',
                'warning'
            );
            redirect('news');
            return;
        }

        $data['title'] = $post->title . ' | Public News';
        $data['news'] = $post;
        $data['author'] = get_user_profile($data['news']->iduser);
        $data['sidebar'] = FALSE;
        $data['template_name'] = $this->template->get();
        $data['pdf'] = TRUE;

        $this->load->library('pdf');
        $this->pdf->generate($this->template->get() . '/layout', array('data' => $data, 'view' => $this->template->get() . '/news/detail'));
        $this->pdf->Output("news_".$idpost.".pdf", "D");
    }
}