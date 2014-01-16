
if(jQuery('.coderwall-display').length > 0) {
	jQuery.ajax({
		url: 'https://api.github.com/orgs/guardian/members'
	}).done(function (data) {
		jQuery('.coderwall-display').append('<ul class="coderwall"></ul>');

		jQuery(data).each(function(i, elem) {
			jQuery('.coderwall').append('<li class="coderwall-coder">' + elem.login + '</li>');
		});
	});
}