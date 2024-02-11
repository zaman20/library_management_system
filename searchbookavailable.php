<?php

//search_book.php

include 'database_connection.php';

include 'function.php';

if(!is_user_login())
{
	header('location:user_login.php');
}

if(isset($_GET['search_text'])){
    $searchText= $_GET['search_text'];
    
    $query = "
	SELECT * FROM lms_book 
    WHERE book_status = 'Enable' and book_name Like '%$searchText%'
    ORDER BY book_id DESC
    ";

    $statement = $connect->prepare($query);

    $statement->execute();
}



include 'header.php';

?>

<div class="container-fluid py-4" style="min-height: 700px;">

	<h1>Search Book</h1>

	<div class="card mb-4">
		<div class="card-header">
			<div class="row">
				<div class="col col-md-6">
					<i class="fas fa-table me-1"></i> Book List
				</div>
				<div class="col col-md-6" align="right">

				</div>
			</div>
		</div>

		<div class="search-box">
		<form action="searchbookavailable.php" method="get" class="row">
			<div class="col-lg-8">
			<input type="text" name="search_text" class="form-control my-2" placeholder="Search By Book Name....">
			</div>
			<div class="col-lg-3">
				<input type="submit"  class="btn btn-dark  search-btn my-2" value="Search">
			</div>
			
		</form>
	</div>

		<div class="card-body">
			<table id="datatablesSimple" class="table">
				<thead>
					<tr>
						<th>Book Name</th>
						<th>ISBN No.</th>
						<th>Category</th>
						<th>Author</th>
						<th>Location Rack</th>
						<th>No. of Available Copy</th>
						<th>Status</th>
						<th>Added On</th>
					</tr>
				</thead>
				<tbody>
				<?php 

				if($statement->rowCount() > 0)
				{
					foreach($statement->fetchAll() as $row)
					{
						$book_status = '';
						if($row['book_no_of_copy'] > 0)
						{
							$book_status = '<div class="badge bg-success">Available</div>';
						}
						else
						{
							$book_status = '<div class="badge bg-danger">Not Available</div>';
						}
						echo '
							<tr>
								<td>'.$row["book_name"].'</td>
								<td>'.$row["book_isbn_number"].'</td>
								<td>'.$row["book_category"].'</td>
								<td>'.$row["book_author"].'</td>
								<td>'.$row["book_location_rack"].'</td>
								<td>'.$row["book_no_of_copy"].'</td>
								<td>'.$book_status.'</td>
								<td>'.$row["book_added_on"].'</td>
							</tr>
						';
					}
				}
				else
				{
					echo '
					<tr>
						<td colspan="8" class="text-center">No Data Found</td>
					</tr>
					';
				}

				?>
				</tbody>
			</table>
		</div>
	</div>
</div>

<?php 

include 'footer.php';

?>