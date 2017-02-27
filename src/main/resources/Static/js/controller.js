
var cartApp = angular.module("cartApp", []);

cartApp.controller("cartCtrl", function ($scope, $http) {
	
	$scope.refreshCart = function (){
		$http.get('/zRecord/rest/cart/' + $scope.cartId)
		.success(function(data){
			$scope.cart=data;
			console.log("PRODUCT SAVED SUCCESSFULLY!!", $scope.cart);
		});
	};
	
	$scope.clearCart = function(){
		$http.delete('/zRecord/rest/cart/'+$scope.cartId)
		.success($scope.refreshCart());
	};
	
	$scope.initCartId = function(cartId){
		$scope.cartId = cartId;
		$scope.refreshCart(cartId);
	};
	
	
	$scope.addToCart = function(productId){
		$http.put('/zRecord/rest/cart/add/'+productId)
		.success(function() {
			alert("Product successfully added to the cart!!");
			console.log("PRODUCT SAVED SUCCESSFULLY!!");
		});
	};
	
	$scope.removeFromCart = function(productId){
		$http.put('/zRecord/rest/cart/remove/'+productId)
		.success(function(data) {
			$scope.refreshCart();
			alert("Product successfully removed from the cart!!");
		});
	};
	$scope.calGrandTotal = function () {
        var grandTotal=0;

        for (var i=0; i<$scope.cart.cartItems.length; i++) {
            grandTotal+=$scope.cart.cartItems[i].totalPrice;
        }
		return grandTotal;
	}
		
});