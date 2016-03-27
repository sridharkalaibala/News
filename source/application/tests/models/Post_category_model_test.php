<?php
/**
 * Description of Home_test
 *
 * @author Sridhar Balasubramanian
 */
class Post_category_model_test extends TestCase
{
        public function setUp()
        {
            $this->resetInstance();
            $this->CI->load->model('Post_category_model');
            $this->obj = $this->CI->Post_category_model;
        }
	
        
        public function test_add()
        {
            $actual = $this->obj->add(array("sdfsdfs"=>"dsfdfsd"));
            $expected = FALSE;
            $this->assertEquals($expected, $actual);
        }
        
        public function test_update()
        {
            $actual = $this->obj->update(array("edited_by"=>"sri".time()),array("idpost_category"=>"1"));
            $expected = 1;
            $this->assertEquals($expected, $actual);
            
            $actual = $this->obj->update(array("sdfdf"=>"sri".rand()),array("idpost_category"=>1));
            $expected = FALSE;
            $this->assertEquals($expected, $actual);
        }
        
         public function test_get_category_by_idpost()
        {
            $actual = $this->obj->get_category_by_idpost(45654654);
            $expected = array();
            $this->assertEquals($expected, $actual);
            
            $actual = $this->obj->get_category_by_idpost(2);
            $expected = 'Business';
            $this->assertEquals($expected, $actual[0]->title);
        }
        
        public function test_get_posts_by_idcategory()
        {
            $actual = $this->obj->get_posts_by_idcategory(45654654);
            $expected = array();
            $this->assertEquals($expected, $actual);
            
            $actual = $this->obj->get_posts_by_idcategory(1);
            $this->assertGreaterThan(0, count($actual));
        }
        
       
}