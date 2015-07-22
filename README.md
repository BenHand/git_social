<a href="https://codeclimate.com/github/BenHand/git_social"><img src="https://codeclimate.com/github/BenHand/git_social/badges/gpa.svg" /></a>
<a href="https://codeclimate.com/github/BenHand/git_social/coverage"><img src="https://codeclimate.com/github/BenHand/git_social/badges/coverage.svg" /></a>
# GitSocial
  - A Website for coders who use GitHub and want to chat about code.
    Through the use of omniauth users can login through github and
    a profile is created to display their information. Includes stats
    on repo counts as well as creation date of github account. Through
    the use of the github api and octokit users repos and recent github
    activity will also be displayed.
  - The Forum is open to all who are logged in. Create topics to chat
    about and within those topics create posts and comments.

## Installation Steps

 *  Fork this repo
 *  Clone this repo
 *  Run `bundle install`
 *  Run `rake db:create` Postgres will need to be setup and running.
 *  Register an application to have access to the github API <a href="https://github.com/settings/developers">here</a>.
 ![Alt text](app/assets/images/readme_pics/github_app.png?raw=true "Sample App")
 *  Setup <a href="https://github.com/laserlemon/figaro#getting-started">Figaro</a> with your github api keys. # Remember to not push your keys to
 GitHub.
 *  Run `rails s` to start the server

## What was used
  - <a href="https://github.com/intridea/omniauth-github">Omniauth-GitHub
    </a> for logging in.
  - <a href="https://github.com/octokit/octokit.rb">Octokit.rb</a> for
    creating user profile and github profile as well as retreiving pertanent user information.
  - <a href="https://github.com/vmg/redcarpet">Redcarpet</a> for markdown
    of posts and comments.
  - <a href="https://github.com/tmm1/pygments.rb">Pygments.rb</a> for
    syntax highlighting of code in posts and comments.
  - <a href="http://materializecss.com/">Materialize CSS</a> for styling
    and JS.
  - Check out the <a href="https://github.com/BenHand/git_social/blob/master/Gemfile">Gemfile</a> to see all that was used.

## link_to
  - trello <a href="https://trello.com/b/bsfL4d7O/final-project">scrum board</a>

## File Structure
```
▶ tree
.
├── Gemfile
├── Gemfile.lock
├── Procfile
├── README.md
├── Rakefile
├── app
│   ├── assets
│   │   ├── font
│   │   │   ├── material-design-icons
│   │   │  
│   │   ├── images
│   │   │   ├── GitHub-bw.png
│   │   │   └── Octocat.png
│   │   ├── javascripts
│   │   │   ├── animation.js
│   │   │   ├── application.js
│   │   │   ├── bin
│   │   │   │   ├── materialize.js
│   │   │   │   └── materialize.min.js
│   │   │   ├── buttons.js
│   │   │   ├── cards.js
│   │   │   ├── character_counter.js
│   │   │   ├── collapsible.js
│   │   │   ├── comments.coffee
│   │   │   ├── components
│   │   │   ├── components.js
│   │   │   ├── date_picker
│   │   │   │   ├── picker.date.js
│   │   │   │   └── picker.js
│   │   │   ├── dropdown.js
│   │   │   ├── forms.js
│   │   │   ├── forums.coffee
│   │   │   ├── friend_lists.coffee
│   │   │   ├── friend_requests.coffee
│   │   │   ├── global.js
│   │   │   ├── hammer.min.js
│   │   │   ├── jquery.easing.1.3.js
│   │   │   ├── jquery.hammer.js
│   │   │   ├── leanModal.js
│   │   │   ├── materialbox.js
│   │   │   ├── parallax.js
│   │   │   ├── posts.coffee
│   │   │   ├── pushpin.js
│   │   │   ├── scrollFire.js
│   │   │   ├── scrollspy.js
│   │   │   ├── sideNav.js
│   │   │   ├── slider.js
│   │   │   ├── tabs.js
│   │   │   ├── toasts.js
│   │   │   ├── tooltip.js
│   │   │   ├── transitions.js
│   │   │   ├── users.coffee
│   │   │   ├── velocity.min.js
│   │   │   └── waves.js
│   │   └── stylesheets
│   │       ├── application.css.scss
│   │       ├── comments.scss
│   │       ├── components
│   │       ├── forums.scss
│   │       ├── friend_lists.scss
│   │       ├── friend_requests.scss
│   │       ├── materialize.scss
│   │       ├── posts.scss
│   │       ├── pygments.scss.erb
│   │       ├── scaffolds.scss
│   │       └── users.scss
│   ├── controllers
│   │   ├── application_controller.rb
│   │   ├── comments_controller.rb
│   │   ├── concerns
│   │   ├── forums_controller.rb
│   │   ├── friend_lists_controller.rb
│   │   ├── friend_requests_controller.rb
│   │   ├── posts_controller.rb
│   │   ├── users
│   │   │   └── omniauth_callbacks_controller.rb
│   │   └── users_controller.rb
│   ├── helpers
│   │   ├── application_helper.rb
│   │   ├── comments_helper.rb
│   │   ├── forums_helper.rb
│   │   ├── friend_lists_helper.rb
│   │   ├── friend_requests_helper.rb
│   │   ├── posts_helper.rb
│   │   └── users_helper.rb
│   ├── mailers
│   ├── models
│   │   ├── comment.rb
│   │   ├── concerns
│   │   ├── forum.rb
│   │   ├── friend_list.rb
│   │   ├── friend_request.rb
│   │   ├── github_profile.rb
│   │   ├── post.rb
│   │   └── user.rb
│   └── views
│       ├── comments
│       │   ├── _form.html.erb
│       │   ├── edit.html.erb
│       │   ├── index.html.erb
│       │   ├── index.json.jbuilder
│       │   ├── new.html.erb
│       │   ├── show.html.erb
│       │   └── show.json.jbuilder
│       ├── devise
│       │   ├── confirmations
│       │   │   └── new.html.erb
│       │   ├── mailer
│       │   │   ├── confirmation_instructions.html.erb
│       │   │   ├── reset_password_instructions.html.erb
│       │   │   └── unlock_instructions.html.erb
│       │   ├── passwords
│       │   │   ├── edit.html.erb
│       │   │   └── new.html.erb
│       │   ├── registrations
│       │   │   ├── edit.html.erb
│       │   │   └── new.html.erb
│       │   ├── sessions
│       │   │   └── new.html.erb
│       │   ├── shared
│       │   │   └── _links.html.erb
│       │   └── unlocks
│       │       └── new.html.erb
│       ├── forums
│       │   ├── _form.html.erb
│       │   ├── edit.html.erb
│       │   ├── index.html.erb
│       │   ├── new.html.erb
│       │   └── show.html.erb
│       ├── friend_lists
│       ├── friend_requests
│       ├── layouts
│       │   └── application.html.erb
│       ├── posts
│       │   ├── _form.html.erb
│       │   ├── edit.html.erb
│       │   ├── index.html.erb
│       │   ├── new.html.erb
│       │   └── show.html.erb
│       ├── shared
│       │   ├── _navlinks.html.erb
│       │   ├── _search.html.erb
│       │   ├── search_page.html.erb
│       │   └── search_results.html.erb
│       └── users
│           ├── edit_profile.html.erb
│           └── profile_main.html.erb
├── bin
│   ├── bundle
│   ├── rails
│   ├── rake
│   ├── setup
│   └── spring
├── config
│   ├── application.rb
│   ├── application.yml
│   ├── boot.rb
│   ├── database.yml
│   ├── environment.rb
│   ├── environments
│   │   ├── development.rb
│   │   ├── production.rb
│   │   └── test.rb
│   ├── initializers
│   │   ├── assets.rb
│   │   ├── backtrace_silencers.rb
│   │   ├── cookies_serializer.rb
│   │   ├── devise.rb
│   │   ├── filter_parameter_logging.rb
│   │   ├── inflections.rb
│   │   ├── mime_types.rb
│   │   ├── session_store.rb
│   │   └── wrap_parameters.rb
│   ├── locales
│   │   ├── devise.en.yml
│   │   └── en.yml
│   ├── routes.rb
│   └── secrets.yml
├── config.ru
├── coverage
├── db
│   ├── migrate
│   │   ├── 20150707144738_devise_create_users.rb
│   │   ├── 20150707160205_create_forums.rb
│   │   ├── 20150707160314_create_posts.rb
│   │   ├── 20150707160412_create_comments.rb
│   │   ├── 20150707162455_create_friend_requests.rb
│   │   ├── 20150707162600_create_friend_lists.rb
│   │   ├── 20150707164524_add_columns_to_users.rb
│   │   ├── 20150707172640_add_column_to_users.rb
│   │   ├── 20150708165119_add_fields_to_users.rb
│   │   ├── 20150708183658_create_github_profiles.rb
│   │   └── 20150708190236_add_column_to_github_profile.rb
│   ├── schema.rb
│   └── seeds.rb
├── lib
│   ├── assets
│   └── tasks
├── log
│   ├── development.log
│   └── test.log
├── public
│   ├── 404.html
│   ├── 422.html
│   ├── 500.html
│   ├── favicon.ico
│   └── robots.txt
├── test
│   ├── controllers
│   │   ├── comments_controller_test.rb
│   │   ├── forums_controller_test.rb
│   │   ├── friend_lists_controller_test.rb
│   │   ├── friend_requests_controller_test.rb
│   │   ├── posts_controller_test.rb
│   │   └── users_controller_test.rb
│   ├── fixtures
│   │   ├── comments.yml
│   │   ├── forums.yml
│   │   ├── friend_lists.yml
│   │   ├── friend_requests.yml
│   │   ├── github_profiles.yml
│   │   ├── posts.yml
│   │   └── users.yml
│   ├── helpers
│   ├── integration
│   ├── mailers
│   ├── models
│   │   ├── comment_test.rb
│   │   ├── forum_test.rb
│   │   ├── friend_list_test.rb
│   │   ├── friend_request_test.rb
│   │   ├── github_profile_test.rb
│   │   ├── post_test.rb
│   │   └── user_test.rb
│   └── test_helper.rb
│   ├── pids
│   │   └── server.pid
│   ├── react-rails
│   │   ├── JSXTransformer.js
│   │   └── react.js
│   ├── sessions
│   └── sockets
└── vendor
    └── assets
        ├── javascripts
        └── stylesheets

74 directories, 1791 files
```
