<?php
/**
 * Description of Home_test
 *
 * @author Sridhar Balasubramanian
 */
class News_test extends TestCase
{
	public function test_index()
	{
            $output = $this->request('GET', ['News', 'index']);
            $this->assertResponseCode(302);
	}
        public function test_category(){
            $output = $this->request('GET', 'news/category/1');
            $this->assertResponseCode(200);
            $this->assertContains('<title>Business | Public News</title>', $output);
        }
        
        public function test_search(){
            $output = $this->request('GET', 'news/search/hello');
            $this->assertResponseCode(302);
        }
        
        public function test_tag(){
            $output = $this->request('GET', 'news/tag/1');
            $this->assertResponseCode(200);
            $this->assertContains('<title>accident | Public News</title>', $output);
        }
        
        public function test_rss(){
            $output = $this->request('GET', 'news/rss');
            $this->assertResponseCode(200);
        }
        
        public function test_detail(){
            $output = $this->request('GET', 'news/detail/10');
            $this->assertResponseCode(200);
             $output = $this->request('GET', 'news/detail/165756540');
            $this->assertResponseCode(302);
        }
        

        
	public function test_method_404()
	{
		$this->request('GET', ['Home', 'method_not_exist']);
		$this->assertResponseCode(404);
	}
	public function test_APPPATH()
	{
		$actual = realpath(APPPATH);
		$expected = realpath(__DIR__ . '/../..');
		$this->assertEquals(
			$expected,
			$actual,
			'Your APPPATH seems to be wrong. Check your $application_folder in tests/Bootstrap.php'
		);
	}
}