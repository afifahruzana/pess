<!doctype html>
<html>
<head>
<title>Update.php</title>
	<?php include "header.php"; ?>
</head>
<?php
if(!isset($_POST["btnSearch"]))
{?>

<!-- reate a form to search for patrol car based on id-->

<form name="form1" method="post" action="<?php echo htmlentities($_SERVER['PHP_SELF']);?>">
<table width="80%" border="0" align="center" cellpadding="4" cellspacing="4">
<tr>
	<td width="25%" class="td_label">Patrol Car Id:</td>
    <td width="25%" class="td_Data"><input type="text" name="patrolCarId" id="patrolCarId"></td>
    <td class="td_Data"><input type="submit" name="btnSearch" id="btnSearch" value="Search"></td>
</tr>
</table>
</form>
<?php
} 
	else 
	{
	$con=mysql_connect("localhost","afifahruzana","12345");
	if(!$con)
{
		die('Cannot connect to database : '.mysql_error());
}
mysql_select_db("29_afifah_pessdb", $con);

$sql="SELECT * FROM patrolcar WHERE patrolCarId='".$_POST['patrolCarId']."'";									
$result=mysql_query($sql,$con);
$patrolCarId;

$patrolCarStatusId;

while($row=mysql_fetch_array($result))
{
	$patrolCarId=$row['patrolcarId'];
	$patrolCarStatusId=$row['patrolcarStatusId'];	
}
$sql="SELECT * FROM patrolcar_status";

$result=mysql_query($sql,$con);

$patrolCarStatusMaster;

while($row=mysql_fetch_array($result))
{
	$patrolCarStatusMaster[$row['statusId']]=$row['statusDesc'];
}
mysql_close($con);
?>
<form name="form2" method="post" action="<?php echo htmlentities($_SERVER['PHP_SELF']);?>">

<table width="80%" border="0" align="center" cellpadding="4" cellspacing="4">

<tr>
<td width="25%" class="td_label">Patrol Car Id;</td>
<td width="25%" class="td_Data"><?php echo $_POST["patrolCarId"]?></td>
</tr>

<tr>
<td class="td_label">Status;</td>
<td class="td_Data"><select name="patrolCarStatus" id="$patrolCarStatus">

<?php foreach ($patrolCarStatusMaster as $key=>$value){?>
	<option value="<?php echo $key?>"
    <?php if($key==$patrolCarStatusId) {?>selected="selected"
    <?php }?>>
    <?php echo $value?>
    </option>
    
    <?php }?>
    </select></td>
    </tr>
    </table>
    <br/>
    <table width="80%" border="0" align="center" cellpadding="4" cellspacing="4">
    <tr>
    <td width="46%" class="td_label"><input type="reset"
    name="btnCancel" id="btnCancel" value="Reset" /></td>
    
    <td width="54%"
    class="td_Data">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="submit" name="btnUpdate" value="Update">
   	</td>
    </tr>
    </table>
    </form>
<?php }?>
</html>


