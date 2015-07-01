;(function(){

	$(document).ready(function() {

		signInListener();
		signUpListener();

	  addProductButtonListener();
	  editProductButtonListener();
	  updateProductListener();

	  singleCategoryListener();

	  searchButtonListener();
	});

	var signInListener = function() {
		$('#signin-button').on('click', function(event) {
			event.preventDefault();

			var route = $(this).attr('action');
			var method = $(this).attr('method');

			var request = $.ajax({
				url: route,
				type: method,
			})

			request.done(function(response) {
				$('.categories').hide();
				$('.products').hide();
				$('.single-product').hide();
				$('#signin-button').hide();
				$('#signup-button').show();
				$('.sign-up-form').hide();
				$('.container').append(response)
			})

			request.fail(function(response) {
				console.log('FAIL', response);
			})

		})
	}

	var signUpListener = function() {
		$('#signup-button').on('click', function(event) {
			event.preventDefault();

			var route = $(this).attr('action');
			var method = $(this).attr('method');

			var request = $.ajax({
				url: route,
				type: method
			})

			request.done(function(response) {
				$('.categories').hide();
				$('.products').hide();
				$('.single-product').hide();
				$('#signup-button').hide();
				$('#signin-button').show();
				$('.sign-in-form').hide()
				$('.container').append(response);
			})

			request.fail(function(response) {
				console.log('FAIL', response)
			})
		})
	}

	var addProductButtonListener = function() {
		$('.container').on('click', '#add-product-button',function(event) {
			event.preventDefault();

			var route = $(this).attr('action');
			var method = $(this).attr('method');

			var request = $.ajax({
				url: route,
				type: method
			})

			request.done(function(response){
				$('.categories').remove();
				$('.single-category').remove();
				$('.container').append(response);
			})

			request.fail(function(response){
				console.log('FAIL', response)
			})

		})
	}

	var editProductButtonListener = function() {
		$('.container').on('click', '#edit-product-button', function(event) {
			event.preventDefault();

			var route = $('#edit-product-button').attr('action')
			var method = $('#edit-product-button').attr('method')

			var request = $.ajax({
				url: route,
				type: method
			})

			request.done(function(response) {
				$('.single-product').remove();
				$('.container').append(response);
			})

			request.fail(function(response) {
				console.log('FAIL', response)
			})
		})
	}

	var updateProductListener = function() {
		$('.container').on('click', 'input[value="Update Product"]', function(event) {
			event.preventDefault();

			var route = $('#edit-product-form').attr('action');
			var method = $('input[value="put"]').val();
			var editProductData = $('label').children().serialize();

			var request = $.ajax({
				url: route,
				type: method,
				data: editProductData
			})

			request.done(function(response) {
				$('.edit-product-form').remove();
				$('.container').append(response);
			})

			request.fail(function(response) {
				console.log('FAIL', response)
			})

		})
	}

	var singleCategoryListener = function() {
		$('.container').on('click', 'td#category-rows', function(event) {
			event.preventDefault();

			var route = $(this).children().attr('href');

			var request = $.ajax({
				url: route,
				type: 'get'
			})

			request.done(function(response) {
				$('.products').remove();
				$('.single-category').remove();
				$('.container').append(response);
			})

			request.fail(function(response) {
				console.log('FAIL', response)
			})
		})
	}

	var searchButtonListener = function() {
		$('#search-button').on('submit', function(event) {
			event.preventDefault();

			
		})

	}
})();
