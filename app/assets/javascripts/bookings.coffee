# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$(document).on 'ready page:load', ->
	$('.package-select').change ->
		if @value
			$.getJSON "/packages/#{@value}/fetch_detail", (response) ->
				packageDetail = "<div>Package Description: #{response.description}</div></br><div>Package Price: #{response.price}</div></br>"
				$('.package-detail').html(packageDetail)
		else
			$('.package-detail').html('')
