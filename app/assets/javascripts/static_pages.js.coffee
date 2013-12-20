# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

ready = ->
	$(".introslide").animate
	  opacity: 1
	  "margin-top": "0px", 500

$(document).ready(ready)
$(document).on('page:load', ready)