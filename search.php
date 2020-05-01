<?php
// Build up DB connection including cofiguration file
require ("dbcon.php");

// Assign the search button to get data through post method
$search = $_POST["searchBox"];
// SQL query to featch the details of a country
$sql = "SELECT * FROM countries WHERE country LIKE '$search%'";
// execution of the query. Output a boolean value
$res = mysqli_query($conn, $sql);
// Take the number of rows of countries starting with the entered word phrase
$count = mysqli_num_rows($res);

?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
    <link href="https://fonts.googleapis.com/css?family=Roboto" rel="stylesheet">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <title>Search Results</title>
    <style type="text/css">
        body{
            font-family: 'Roboto', sans-serif;
            margin-top: 30px;
            background-image: url('pics/back.jpg');
        }
        table {
        	margin-top: 100px;
        	font-size: 20px;

        }

        table td {
        	width: 200px;
        }

    </style>
</head>
<body>
    <div class="col-lg-12">
	    <div class="col-lg-3"></div>
	    <div class="col-lg-6">
			<table class="table table-bordered">

<?php
// Check if there are rows matched with the query
if($count>0)
{
    // Output the details within a table with Bootstrap styes
	while($data = mysqli_fetch_assoc($res)){

        echo '<tr>';
        echo "<td>".'Name'."</td>"."<td>".$data['country']."</td>"; 
        echo '</tr>';

        echo '<tr>';
        echo "<td>".'Currency'."</td>"."<td>".$data['currency']."</td>";
        echo '</tr>';

        echo '<tr>';
        echo "<td>".'<br>National Flag'."</td>"."<td id='flag_td'>"."<img src='";echo $data["flag"];echo "' "; echo "style='height: 80px; width:150px;'"; echo">"."</td>";
        echo "</tr>";
 		echo '</table>';
	}
}
// If there are no matching countries this will displayed in the browser
else {
	echo "No Data";
}

?><br>
<!-- Return button to the input page -->
               <center>
                    <a href="index.php" class="btn btn-default">Back</a>
                </center>
		</div>
	</div>
</body>
</html>
