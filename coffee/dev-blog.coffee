
console.log "Hello dev blog!"

devBlogCall = jQuery.ajax
	url: 'http://beta.content.guardianapis.com/info/developer-blog?show-fields=all&show-elements=all&api-key=gdn-dev-site',
	cache: true

devBlogCall.done (data) ->
	posts = data.response.results
	firstPost = posts[0]
	jQuery('.dev-blog-latest-post').append("<h3>#{firstPost.webTitle}</h3>").append("<p>#{firstPost.fields.trailText}").append("<p><a href=\"#{firstPost.webUrl}\">Read the post</a></p>")

	posts.slice(1, 5).forEach (post) ->
		jQuery('.dev-blog-trails').append("<li><a href=\"post.webUrl\">#{post.webTitle}</a></li>")