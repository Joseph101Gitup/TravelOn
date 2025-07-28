<?php
class dboperation
{
	public $con,$result;

	function __construct()
	{
		$this->con=mysqli_connect("localhost","root","","travelon_db");

		
		// Check connection
		if (!$this->con) 
		{
				die("Connection failed: " . mysqli_connect_error());
		}

	}
	public function executequery($sqlquery)  
	{
	
		$this->result=mysqli_query($this->con,$sqlquery);
		return $this->result;
	}
}
?>