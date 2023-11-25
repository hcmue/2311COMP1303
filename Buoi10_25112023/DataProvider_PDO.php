<?php
class DataProvider 
{
	public static function ExecuteQuery($sql)
	{
		try{
			$dsn = "mysql:host=localhost; dbname=qlbanhoa;";
			$dbh = new PDO($dsn, "root", "");
		}
		catch(PDOException $e)		{
			echo "Lỗi: ".$e->getMessage();
		}
		
		if($dbh != null)//đã kết nối
		{
			$dbh->query("SET NAMES 'utf8'");
			$stmt = $dbh->query($sql);
			$dbh = null;
		}
		return $stmt;
	}
}
?>