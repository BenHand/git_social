<a href="https://codeclimate.com/github/BenHand/git_social"><img src="https://codeclimate.com/github/BenHand/git_social/badges/gpa.svg" /></a>
<a href="https://codeclimate.com/github/BenHand/git_social/coverage"><img src="https://codeclimate.com/github/BenHand/git_social/badges/coverage.svg" /></a>
# GitSocial
  - A Website for coders who use GitHub and want to chat about code.

`
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
│   │   │   │   ├── LICENSE.txt
│   │   │   │   ├── Material-Design-Icons.eot
│   │   │   │   ├── Material-Design-Icons.svg
│   │   │   │   ├── Material-Design-Icons.ttf
│   │   │   │   ├── Material-Design-Icons.woff
│   │   │   │   └── Material-Design-Icons.woff2
│   │   │   └── roboto
│   │   │       ├── Roboto-Bold.ttf
│   │   │       ├── Roboto-Bold.woff
│   │   │       ├── Roboto-Bold.woff2
│   │   │       ├── Roboto-Light.ttf
│   │   │       ├── Roboto-Light.woff
│   │   │       ├── Roboto-Light.woff2
│   │   │       ├── Roboto-Medium.ttf
│   │   │       ├── Roboto-Medium.woff
│   │   │       ├── Roboto-Medium.woff2
│   │   │       ├── Roboto-Regular.ttf
│   │   │       ├── Roboto-Regular.woff
│   │   │       ├── Roboto-Regular.woff2
│   │   │       ├── Roboto-Thin.ttf
│   │   │       ├── Roboto-Thin.woff
│   │   │       └── Roboto-Thin.woff2
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
│   │       │   ├── _buttons.scss
│   │       │   ├── _cards.scss
│   │       │   ├── _collapsible.scss
│   │       │   ├── _color.scss
│   │       │   ├── _dropdown.scss
│   │       │   ├── _form.scss
│   │       │   ├── _global.scss
│   │       │   ├── _grid.scss
│   │       │   ├── _icons-material-design.scss
│   │       │   ├── _materialbox.scss
│   │       │   ├── _mixins.scss
│   │       │   ├── _modal.scss
│   │       │   ├── _navbar.scss
│   │       │   ├── _normalize.scss
│   │       │   ├── _prefixer.scss
│   │       │   ├── _preloader.scss
│   │       │   ├── _roboto.scss
│   │       │   ├── _sideNav.scss
│   │       │   ├── _slider.scss
│   │       │   ├── _table_of_contents.scss
│   │       │   ├── _tabs.scss
│   │       │   ├── _toast.scss
│   │       │   ├── _tooltip.scss
│   │       │   ├── _typography.scss
│   │       │   ├── _variables.scss
│   │       │   ├── _waves.scss
│   │       │   └── date_picker
│   │       │       ├── _default.date.scss
│   │       │       ├── _default.scss
│   │       │       └── _default.time.scss
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
├── style.css
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
`
