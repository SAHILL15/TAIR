<?php
include_once 'database.php';
$result = mysqli_query($conn,"SELECT * FROM signup");
?>
<!DOCTYPE html>
<html>
 <head>
 <H1 style=" margin-left: 581px; 
    display: block;
    color: #000009;
    border-radius: 8px;
    background-color: #DAA520;
    padding: 10px 5px;
    width: 190px;
    max-width: 226px;
    margin-top: 12px;
    text-align: center;">ADMIN INTERFACE </H1>
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
tr{
 
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
  <table border:2px; style="box-shadow: 0 6px 12px #00040e;">
  <button class="button1" id="myBtn" onclick="document.location = 'http://localhost/shopx/adminbox.html'" type="button">Back</button> 
  <button class="button1" id="myBtn" onclick="document.location = 'http://localhost/shopx/Shopzsignup.html'" type="button">Add+</button> 
 <br>
 <br>
  <tr  style="background: #FFA500;">
  <td> ID</td>
    <td> Name</td>
    <td>Phone Number</td>
    <td>Email</td>
    <td>Password</td>
    <td>Action</td>
  </tr>
<?php
$i=0;
while($row = mysqli_fetch_array($result)) {
?>
<tr >
    <td><?php echo $row["Signup_id"]; ?></td>
    <td><?php echo $row["name"]; ?></td>
    <td><?php echo $row["Phone_number"]; ?></td>
    <td><?php echo $row["email"]; ?></td>
    <td><?php echo $row["upassword"]; ?></td>
    <?php echo '<td>  <center> <a id="deleteBtn"  href="./delete1.php?id='.$row['Signup_id'].'"> Delete</a> </center></td>' ?>
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