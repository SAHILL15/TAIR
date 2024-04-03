<?php
include_once 'database.php';
$result = mysqli_query($conn,"SELECT * FROM brand");
?>
<!DOCTYPE html>
<html>
 <head>
    <style>
   table {
    font-family: arial, sans-serif;
    border-collapse: collapse;
    width: 100%;
    
}

td, th {
    border: 8px solid #000009;
    text-align: left;
    padding: 8px;

}

tr:nth-child(even) {
    background-color: white;
    
}
.button1{
  margin-left:90%;
  font-family:Cambria, Cochin, Georgia, Times, 'Times New Roman', serif;
  font-size: larger;
  width:80px;
}
#deleteBtn{
  
  background-color: rgb(250, 0, 0);
  border: 2px solid Black;
	color: #000009;
  text-align: center;
	padding: 0.3em 1em;
	text-decoration: none;
	width: 20px;
  border-radius: 5PX;
}
#myBtn{
  
  background-color: #FFA500;
    border-radius: 8PX;
    color: #000009;
    height: 36px;
    width: 100px;
    margin-left: 1177px;

  
}</style>
 <title> Customer Data</title>
 </head>
<body>
<?php
if (mysqli_num_rows($result) > 0) {
?>
  <table style="box-shadow: 0 6px 12px #00040e;">
  <button class="button1" id="myBtn" onclick="document.location = 'http://localhost/shopx/adminbox.html'" type="button">Back+</button> 
  
  <tr style="background: #FFA500;">
    <td><center> BRAND ID </center></td>
    <td> <center>BRAND NAME </center></td>
    <td> <center>ACTION </center></td>
  </tr>
<?php
$i=0;
while($row = mysqli_fetch_array($result)) {
?>
<tr>
    <td><?php echo $row["b_id"]; ?></td>
    <td><?php echo $row["b_name"]; ?></td>
    <?php echo '<td>  <center> <a id="deleteBtn"  href="./ViewApple.php?id='.$row['b_id'].'"> VIEW </a> </center></td>' ?>
   
</tr>
<?php
$i++;
}
?>
</table>
 <?php
}
else{
    echo "No result found";
}
?>
 </body>
</html>