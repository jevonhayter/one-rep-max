$(function(){
	
	
	$('#submit').on('click', function(e){
		
		e.preventDefault();
		
		var reps = $('#reps').val();
		var weight = $('#weight').val();
		var onerepmax;
	    var wow;
		var bwow;
		var msg;
		var orm;
		var wowR;
		var bwowR;
		
		if (reps <= 10){
			
			$('.space').fadeIn(800);
			
			 
		}   
		
		
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
	
	wowR = Math.round(wow);
	$('#wow').val(wowR);
	
	
	bwowR = Math.round(bwow);
	$('#bwow').val(bwowR);
	
	 
	if (reps >= 11 || reps == 0){
			
			$('.alert').slideDown();
			$('#try').slideToggle();
			$('#try').on('click', function(e){
				
				e.preventDefault();
				
				$('.alert').hide();
				$('#try').hide();
				$('.space').hide();
				 
				$('#reps').focus();
				
				$('#reps').val('');
				
				 
				 
				 
					
			});
			
			 
		}   
	 
	 
			 
	 		
	});//end of click function
	
	 
	
}); //End of Ready Function
