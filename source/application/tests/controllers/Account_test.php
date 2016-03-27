<?php

/**
 * Description of Home_test
 *
 * @author Sridhar Balasubramanian
 */
class Account_test extends TestCase
{
	public function test_index()
	{
		$output = $this->request('GET', ['Account', 'index']);
		$this->assertResponseCode(302);
                
	}
        public function test_signup(){
                $output = $this->request(
                    'POST',
                    ['Account', 'signup'],
                    [
                        'email' => 'wrong'
                    ]
                );
                $this->assertContains('<p>The email field must contain a valid email address.</p>', $output);
                
                $output = $this->request(
                    'POST',
                    ['Account', 'signup'],
                    [
                        'email' => 'sridhar.posnic@gmail.com'
                    ]
                );
                $this->assertContains('<p>The email field must contain a unique value.</p>', $output);
                
                $output = $this->request(
                    'POST',
                    ['Account', 'signup'],
                    [
                        'email' => rand().'xyz'.rand().'@gmail'.rand().'.com'
                    ]
                );
                $this->assertResponseCode(302);
                
                
        }
        
        public function test_activate(){
            $output = $this->request('GET', 'account/activate/randomkey');
            $this->assertResponseCode(302);
        }
        
        public function test_login(){
            $output = $this->request(
                    'POST',
                    ['Account', 'login'],
                    [
                        'email'    => 'sridhar.posnic@gmail.com',
                        'password' => 'Temp@123'
                    ]
                );
            $this->assertResponseCode(302);
        }
        public function test_logout()
	{
		$this->request('GET', ['Account', 'logout']);
		$this->assertResponseCode(302);
	}
        
         public function test_retrieve()
	{
		$output = $this->request(
                    'POST',
                    ['Account', 'retrieve'],
                    [
                        'email'    => 'sridhar.posnic@gmail.com'
                    ]
                );
                $output = $this->request(
                    'POST',
                    ['Account', 'retrieve'],
                    [
                        'email'    => 'xxx@xxx.com'
                    ]
                );
		$this->assertResponseCode(302);
	}
        
        public function test_reset(){
            $output = $this->request('GET', 'account/reset/randomkey');
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