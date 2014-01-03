$(document).ready ->

	$(".field_with_hint input[autofocus='autofocus']").parent().find("span")
	.css('display', 'block').hide().slideDown 400

	$(".field_with_hint input").focus ->
		$(this).parent().find("span").css('display', 'block').hide().slideDown 200

	$(".field_with_hint input").focusout ->
		$(this).parent().find("span").slideUp 250
		
	$(".alert-box").delay(500).fadeIn "normal", ->
		$(this).fadeOut(2500)



