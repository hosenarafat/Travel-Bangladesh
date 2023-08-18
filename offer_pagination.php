<?php
         $output='';      
		//connection with database
		$con=new mysqli("localhost","root","", "travelandtour");
					// ^host       ^username  ^database name
		
	    //dcelare the number of page we want in per page
		 $per_page_books=2; 

		//find out the number of results in database
		 $sql="SELECT * FROM offers";
		 $result=$con->query($sql);

		//number of data in booktable
		 $number_of_row= mysqli_num_rows($result);

		//determine total pages avaible
		 $number_of_pages=ceil($number_of_row/$per_page_books);
		
		//determine which page number visitor is currently on
		 if(!isset($_POST['page'])){
		 	$page=1;
		 }
		 else
		 {
		 	$page=$_POST['page'];
		 }

		 //determine the starting limit number of apage
		 $starting_limit_number_perpage=($page-1)*$per_page_books;
		// print_r($starting_limit_number_perpage);
				

		$sql ="select * from offers limit $starting_limit_number_perpage,2";		
		$results=$con->query($sql);

		$myOutput = '<div class="container">
						<div class="row ">
							<div class="col-md-8">';
											
						while($row=mysqli_fetch_array($results)){
						$image = $row['offer_image'];
						$output .=	'<div class="row well" style="padding-left:2px;">
									<div class="col-md-2 tour-image">
										<img src="offer_images/'.$image.'"  class="w3-border w3-padding  w3-card-4" alt="Norway" height="180" width="260"/>
									</div>';

						$output .=	'<div class="col-md-5 detail" style="padding-left:70px;">
										<strong>'.$row['offer_name'].'</strong>
										<p style="width: 250px">'.$row['offer_short_details'].'</p>
										
									</div>';

						$output .=	'<div class="col-md-1 more-detail" style="padding-left:50px;">
										<a href="offer_details.php?offer_id='.$row["offer_id"].'" class="btn btn-success w3-hover-opacity" style="background-color:#009999">DETAILS</a>
									</div>';
						$output .= '</div>';
					}

					$output .=	'<div align="cenetr">';

								 //display the links to the page
								 for($i=1;$i<=$number_of_pages;$i++)
								 {
								 	$active = ($page == $i) ? "pagination-active":"";

								 	 $output .="<span class='pagination_link ".$active."' style='margin-top:50px; cursor:pointer; padding:6px; border:1px solid #00ffff;' id='".$i."'> ".$i." </span>";
								 }
					$output .= '</div>';

				$myOutput .= $output;
				$myOutput .= '</div>
						</div>
					</div>';

		echo $myOutput;

?>
