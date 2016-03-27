<?php
/**
 * Description of Home_test
 *
 * @author Sridhar Balasubramanian
 */
class Home_test extends TestCase
{
	public function test_index()
	{
		$output = $this->request('GET', ['Home', 'index']);
		$this->assertContains('<title>Home | Public News</title>', $output);
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