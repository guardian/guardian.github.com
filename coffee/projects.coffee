repos_url = 'https://api.github.com/orgs/guardian/repos'


projectsCall = jQuery.ajax
	url: repos_url
	cache: true

projectsCall.done (data) ->
	data.sort (a, b) ->
		if a.pushed_at > b.pushed_at
			-1
		else if a.pushed_at == b.pushed_at
			0
		else
			1

	data.forEach (project) ->

		if not project.language
			project.summary = "Starred #{project.stargazers_count} times, #{project.watchers_count} watchers"
		else
			project.summary = "Written in #{project.language}, starred #{project.stargazers_count} times, #{project.watchers_count} watchers"

		jQuery('.project-listing-list').append("<div class=\"project-listing-project\"><p class=\"project-listing-list-name\"><a href=\"#{project.html_url}\">#{project.name}</a></p><div class=\"project-listing-list-details\"><p class=\"project-listing-list-description\">#{project.description}</p> <p class=\"project-listing-list-summary\">#{project.summary}</p><p class=\"project-listing-list-last-activity\">#{moment.utc(project.pushed_at).fromNow()}</p></div>")

frontend_url = 'https://api.github.com/repos/guardian/frontend'

frontendCall = jQuery.ajax
	url: frontend_url
	cache: true

frontendCall.done (data) ->
	ko.applyBindings(data)
