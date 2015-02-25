// console.log('github_api loaded');

$(document).ready(function() {
  var search = $("#usersearch");

  search.on("submit", function(e){
    e.preventDefault();

    var user = $("#user").val();
    var info = $("div.user-info");

    $.ajax ({
      url: "https://api.github.com/users",
      dataType: "json",
      type: "GET",
      data: { q: user }
      }).done(function(data) {
        var repos = data.repos_url.length;
// users name, avatar, and number of public repos and gists

        info.append(
          $("<p>Number of Repos: "+repos+"</p>") );
      });
   });
});


// use on.submit
