
  // creating Angular Module
  var websiteApp = angular.module('websiteApp', []);
  websiteApp.controller('FormController',function($scope, $http,$timeout) {
  	$scope.successStatus = true;
  	$scope.formData = {};
	  $scope.checkOption = function(){
	  	$scope.selectOption = false;
	  }
	  $scope.submitcotactusForm = function(data) {
	  	$scope.successStatus = true;
	  //	alert(angular.element("#contact").attr("name"));
	  	if(data == true){
	  		//$scope.message = "Please fill the option";
	  		if(!$scope.formData.selectOption)
	  		$scope.selectOption = true;
	  		return false;
	  	}
	  	else if(!$scope.formData.selectOption){
	  		
	  		$scope.selectOption = true;
	  		//$scope.message = "Please select option";
	  		return false;
	  	}
	  	else{
	  		$scope.message = ""
		$http({
		method : 'POST',
		url : 'process.php',
		data : $.param($scope.formData), // pass in data as strings
		headers : { 'Content-Type': 'application/x-www-form-urlencoded' } // set the headers so angular passing info as form data (not request payload)
	  })
		.success(function(data) {
			$scope.successStatus = false;
			 $scope.formData = {};
			/*
			 $timeout(function(){
						 $("#contact input,#contact select,#contact textarea").removeClass("error");
						 },10);*/
			
			 $('#success').fadeIn(1000);
			 $timeout(function(){
			 $('#success').fadeOut(1000);
			 },1000);
		 });
	
		}
	   };
	
	
	/************ footer form ********/
	
	 $scope.footerformData = {};
	 $scope.successStatus = true;	
	  $scope.submitfooterForm = function(data) {
	  	$scope.successStatus = true;
	  	var status = true;
	  	if(data){
	  		
	  	return false;	  	
	  	}
	  	else{	  		
	  		
		$http({
		method : 'POST',
		url : 'process.php',
		data : $.param($scope.footerformData), // pass in data as strings
		headers : { 'Content-Type': 'application/x-www-form-urlencoded' } // set the headers so angular passing info as form data (not request payload)
	  })
		.success(function(data) {
			$scope.successStatus = false;
			 $scope.footerformData = {};
			
			 $('#footerSuccess').fadeIn(1000);
			 $timeout(function(){
			 	$('#footerSuccess').fadeOut(1000);
			 },1000);
		 });
		};
	   
	   };
});
websiteApp.controller('homepageTwoCltr',function($scope,$http){
	$scope.successStatus = true;
	$scope.homeformData = {};	 
	  $scope.submitForm = function(data) {
	  	$scope.successStatus = true;
	  	var status = true;
	  	if(data){
	  		
	  	return false;	  	
	  	}
	  	else{	  		
	  	
		$http({
		method : 'POST',
		url : 'process.php',
		data : $.param($scope.homeformData), // pass in data as strings
		headers : { 'Content-Type': 'application/x-www-form-urlencoded' } // set the headers so angular passing info as form data (not request payload)
	  })
		.success(function(data) {
			$scope.successStatus = false;
			$scope.homeformData = {};
			
		 
		 });
		};
	   
	   };
	   
	    $scope.footerformData = {};
	 $scope.successStatus = true;	
	  $scope.submitfooterForm = function(data) {
	  	$scope.successStatus = true;
	  	var status = true;
	  	if(data){
	  		
	  	return false;	  	
	  	}
	  	else{	  		
	  		
		$http({
		method : 'POST',
		url : 'process.php',
		data : $.param($scope.footerformData), // pass in data as strings
		headers : { 'Content-Type': 'application/x-www-form-urlencoded' } // set the headers so angular passing info as form data (not request payload)
	  })
		.success(function(data) {
			$scope.successStatus = false;
			 $scope.footerformData = {};
			
			 $('#footerSuccess').fadeIn(1000);
			 $timeout(function(){
			 	$('#footerSuccess').fadeOut(1000);
			 },1000);
		 });
		};
	   
	   };
})
