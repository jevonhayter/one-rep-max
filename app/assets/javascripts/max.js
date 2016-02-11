// Function to calculate one rep max

$(function(){
	
	
	$('#submit').on('click', function(e){
		
		e.preventDefault();
		
		// Variables to hold weights and reps
		var reps = $('#reps').val();
		var weight = $('#weight').val();
		var onerepmax;
	    var wow;
		var bwow;
		var msg;
		var orm;
		var wowR;
		var bwowR;
		
		
		// Switches from input form to one rep max veiwable form
		if (reps <= 10){
			
			$('.space').fadeIn(400);
			$('.bye').fadeOut(500);
		}   
	
	// Cases to calculate one rep max
	
	switch (reps) {
	
	case '1':
	onerepmax = weight * 1.0;
	wow = onerepmax * 0.70;
	bwow = onerepmax * 0.85;
	break;
	
	case '2':
	onerepmax = weight * 1.029;
	wow = onerepmax * 0.70;
	bwow = onerepmax * 0.85;
	break;
	
	case '3':
	onerepmax = weight * 1.059;
	wow = onerepmax * 0.70;
	bwow = onerepmax * 0.85;
	break;
	
	case '4':
	onerepmax = weight * 1.091;
	wow = onerepmax * 0.70;
	bwow = onerepmax * 0.85;
	break;
	
	case '5':
	onerepmax = weight * 1.125;
	wow = onerepmax * 0.70;
	bwow = onerepmax * 0.85;
	break;
	
	case '6':
	onerepmax = weight * 1.161;
	wow = onerepmax * 0.70;
	bwow = onerepmax * 0.85;
	break;
	
	case '7':
	onerepmax = weight * 1.2;
	wow = onerepmax * 0.70;
	bwow = onerepmax * 0.85;
	break;
	
	case '8':
	onerepmax = weight * 1.242;
	wow = onerepmax * 0.70;
	bwow = onerepmax * 0.85;
	break;
	
	case '9':
	onerepmax = weight * 1.286;
	wow = onerepmax * 0.70;
	bwow = onerepmax * 0.85;
	break;
	
	case '10':
	onerepmax = weight * 1.33; 
	wow = onerepmax * 0.70;
	bwow = onerepmax * 0.85;
	break;
	
	
	default:
	msg = 'Enter Reps Between 1 to 10';
	break;
	
}//End of Switch

	 
	 
    //write to Dom
	orm = Math.round(onerepmax);
	$('#onerepmax').val(orm); 
	
	orm = Math.round(onerepmax);
	$('#repmax').text(orm); 
	
	wowR = Math.round(wow);
	$('#wow').val(wowR);
	
	
	bwowR = Math.round(bwow);
	$('#bwow').val(bwowR);	 
	 		
	});//end of click function
	
	 
	
}); //End of Ready Function
