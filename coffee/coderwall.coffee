
if jQuery('.coderwall-display').length

	loadEvents = (userid, displaySelector) ->
		eventsCall = jQuery.ajax
			cache: true,
			url: "https://api.github.com/users/#{userid}/events"

		eventsCall.done (data) ->
			display = jQuery(displaySelector).empty()
			
			display.append("<h3 class=\"coder-info-display-userid\">#{userid}</h3>")

			data.slice(0,5).forEach (item) ->
				if item.type is "PushEvent"
					display.append("<p>Pushed to <a href=\"#{item.repo.url}\">#{item.repo.name}</a> ...</p>")
					item.payload.commits.forEach (commit) ->
						display.append("<p class=\"coder-info-display-github-comment\">#{commit.message}</p>")
				if item.type is "CreateEvent"
					display.append("<p>Created new project <a href=\"#{item.repo.url}\">#{item.repo.name}</a></p>")
				if item.type is "IssueCommentEvent"
					display.append "<p>Commented on <a href=\"#{item.payload.comment.url}\">#{item.payload.issue.title}</a></p>"
					display.append "<p class=\"coder-info-display-github-comment\">#{item.payload.comment.body}</p>"

				if item.type is "PullRequestEvent"
					display.append "<p>Pull request #{item.payload.pull_request.title} #{item.payload.action}</p>"
					display.append "<p class=\"coder-info-display-github-comment\">#{item.payload.pull_request.body}</p>"

	memberCall = jQuery.ajax {
		url: 'https://api.github.com/orgs/guardian/members',
		cache: true
		}
	
	memberCall.done (data) ->


		jQuery(data).each (i, elem) ->
			jQuery('.coderwall').append "<li class=\"coderwall-coder\"><a href=\"#{elem.html_url}\"><img class=\"coderwall-coder-avatar\" src=\"#{elem.avatar_url}\" title=\"#{elem.login}\" data-userid=\"#{elem.login}\"></li>"

		jQuery(".coderwall-coder").on "click", (event) ->
			event.preventDefault()
			userid = jQuery(event.target).data('userid')
			loadEvents(userid, '.coder-info-display')

