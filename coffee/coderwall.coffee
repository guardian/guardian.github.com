
if jQuery('.coderwall-display').length
	memberCall = jQuery.ajax {
		url: 'https://api.github.com/orgs/guardian/members'
		}
	
	memberCall.done (data) ->
		jQuery('.coderwall-display').append('<ul class="coderwall"></ul>')

		jQuery(data).each (i, elem) ->
			jQuery('.coderwall').append "<li class=\"coderwall-coder\"><a href=\"#{elem.url}\"><img class=\"coderwall-coder-avatar\" src=\"#{elem.avatar_url}\" title=\"#{elem.login}\"></li>"
