	
How to install:-
---------------	
	1. Copy source files into web directory.
		Ex. \Source\*   to c:\xamp\htdocs\*
		
	2. Open config\database.php enter your database credentials.
		Ex. $db['default'] = array(
				'dsn'	=> '',
				'hostname' => 'localhost',
				'username' => 'root',
				'password' => '',
				'database' => 'news',
				'dbdriver' => 'mysqli',
				'dbprefix' => '',
				'pconnect' => FALSE,
				'db_debug' => FALSE,
				'cache_on' => FALSE,
				'cachedir' => '',
				'char_set' => 'utf8',
				'dbcollat' => 'utf8_general_ci',
				'swap_pre' => '',
				'encrypt' => FALSE,
				'compress' => FALSE,
				'stricton' => FALSE,
				'failover' => array(),
				'save_queries' => TRUE
			);
		
	3. Import db\data.sql file into news database.
	
	4. Open config\email.php edit your email smtp details.
		Ex.
		$config['smtp_host']        = 'mail.sridharb.com';
		$config['smtp_user']        = 'test@sridharb.com';
		$config['smtp_pass']        = 'Temp@123';
		
	5. Done. Now you can open application.
		http://localhost/news/
		
Tech Note:-
----------------

   1. PHP unittest available in source\application\tests\    
      You can run simplty phpunit command on that direct. 
	  more details pls refer https://github.com/kenjis/ci-phpunit-test