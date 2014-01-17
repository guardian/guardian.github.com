repos_url = 'https://api.github.com/orgs/guardian/repos'


projectsCall = jQuery.ajax
	url: repos_url
	cache: true

projectsCall.done (data) ->
	data.forEach (project) ->
		jQuery('.project-listing-list').append("<div class=\"project-listing-project\"><p class=\"project-listing-list-name\"><a href=\"#{project.html_url}\">#{project.name}</a></p><div class=\"project-listing-list-details\"><p class=\"project-listing-list-description\">#{project.description}</p> <p class=\"project-listing-list-summary\">#{project.language}, starred #{project.stargazers_count} times, #{project.watchers_count} watchers</p><p class=\"project-listing-list-last-activity\">#{moment.utc(project.pushed_at).fromNow()}</p></div>")

frontend_url = 'https://api.github.com/repos/guardian/frontend'

frontendCall = jQuery.ajax
	url: frontend_url
	cache: true

frontendCall.done (data) ->
	ko.applyBindings(data)