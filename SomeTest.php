<?php

class SomeTest extends PHPUnit_Framework_TestCase

{

public function testSomething()

{
	include "unitest.php";
	$content = $jml_data;
	$this->assertEquals(4, $content);
}


}

?>