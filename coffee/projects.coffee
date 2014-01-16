repos_url = 'https://api.github.com/orgs/guardian/repos'

if jQuery('.project-listing').length > 0
	projectsCall = jQuery.ajax
		url: repos_url
		cache: true

	projectsCall.done (data) ->
		data.forEach (project) ->
			jQuery('.project-listing-list').append("<tr><td class=\"project-listing-list-name\"><a href=\"#{project.html_url}\">#{project.name}</a><br>#{project.description}</td> <td class=\"project-listing-list-details\">#{project.language}, starred #{project.stargazers_count} times, #{project.watchers_count} watchers</td><td class=\"project-listing-list-last-activity\">#{moment.utc(project.pushed_at).fromNow()}</td></tr> ")