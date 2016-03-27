<?php
/**
 * Description of Home_test
 *
 * @author Sridhar Balasubramanian
 */
class Category_model_test extends TestCase
{
        public function setUp()
        {
            $this->resetInstance();
            $this->CI->load->model('Category_model');
            $this->obj = $this->CI->Category_model;
        }
	
        
        public function test_add()
        {
            $actual = $this->obj->add(array("sdfsdfs"=>"dsfdfsd"));
            $expected = FALSE;
            $this->assertEquals($expected, $actual);
        }
        
        public function test_update()
        {
            $actual = $this->obj->update(array("edited_by"=>"sri".time()),array("idcategory"=>"1"));
            $expected = 1;
            $this->assertEquals($expected, $actual);
            
            $actual = $this->obj->update(array("sdfdf"=>"sri".rand()),array("idcategory"=>1));
            $expected = FALSE;
            $this->assertEquals($expected, $actual);
        }
        
         public function test_get()
        {
            $actual = $this->obj->get('dfdddsdf');
            $expected = FALSE;
            $this->assertEquals($expected, $actual);
            $actual = $this->obj->get(1);
            $expected = 'Business';
            $this->assertEquals($expected, $actual->title);
        }
         public function test_get_all()
        {
            $actual = $this->obj->get_all();
            $expected = 'Business';
            $this->assertEquals($expected, $actual[0]->title);

        }
         public function test_get_by_category()
        {
            $actual = $this->obj->get_by_category(45654654);
            $expected = FALSE;
            $this->assertEquals($expected, $actual);
            $actual = $this->obj->get_by_category('Business');
            $expected = 1;
            $this->assertEquals($expected, $actual->idcategory);

        }
        
        public function test_get_by_idpost()
        {
            $actual = $this->obj->get_by_category('dfdfd');
            $expected = FALSE;
            $this->assertEquals($expected, $actual);
            $actual = $this->obj->get_by_category(2);
            $expected = NULL;
            $this->assertEquals($expected, $actual);

        }
}