<a href="https://codeclimate.com/github/BenHand/git_social"><img src="https://codeclimate.com/github/BenHand/git_social/badges/gpa.svg" /></a>
<a href="https://codeclimate.com/github/BenHand/git_social/coverage"><img src="https://codeclimate.com/github/BenHand/git_social/badges/coverage.svg" /></a>
# GitSocial
  - A Website for coders who use GitHub and want to chat about code.
    Through the use of omniauth users can login through github and
    a profile is created to display their information. Includes stats
    on repo counts as well as creation date of github account. Through
    the use of the github api and octokit, users repos and recent github
    activity will also be displayed.
  - The Forum is open to all who are logged in. Create topics to chat
    about and within those topics create posts and comments.
  - Check out the live site <a href="www.gitsocial.net">here</a>.

## What was used
  - <a href="https://github.com/intridea/omniauth-github">Omniauth-GitHub
    </a> as well as <a href="https://github.com/plataformatec/devise">devise</a> for logging in.
  - <a href="https://github.com/octokit/octokit.rb">Octokit.rb</a> for
    creating user profile and github profile as well as retreiving pertanent user information.
  - <a href="https://github.com/vmg/redcarpet">Redcarpet</a> for markdown
    of posts and comments.
  - <a href="https://github.com/tmm1/pygments.rb">Pygments.rb</a> for
    syntax highlighting of code in posts and comments.
  - <a href="http://materializecss.com/">Materialize CSS</a> for styling
    and JS.
  - <a href="https://github.com/samsonjs/strftime">strftime</a> for datetime formatting.
  - Check out the <a href="https://github.com/BenHand/git_social/blob/master/Gemfile">Gemfile</a> to see all that was used.
  - Rails (4.2.3)
  - Hosting by Heroku
  - Postgresql Database
  - Puma webserver
  - Sass

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

## more info
  - trello <a href="https://trello.com/b/bsfL4d7O/final-project">scrum board</a>
  - UML (excluding currently unused models)
   ![Alt text](app/assets/images/readme_pics/UML.png?raw=true "UML")
  - model relations
  ```
    _User_                        _GitHub_Profile_
    has_many :github_profiles     belongs_to :user
    has_many :forums
    has_many :posts
    has_many :comments

    _Forum_                _Post_                   _Comment_
    belongs_to :user       belongs_to :user         belongs_to :user
    has_many   :posts      belongs_to :forum        belongs_to :post
                           has_many   :comments
  ```
  - white board wire frames
  ![Alt text](app/assets/images/readme_pics/wire_frame1.jpg?raw=true "WF1")
  ![Alt text](app/assets/images/readme_pics/wire_frame2.jpg?raw=true "WF2")

## File Structure
```
.
├── Gemfile
├── Gemfile.lock
├── Procfile
├── README.md
├── Rakefile
├── app
│   ├── assets
│   │   ├── font
│   │   │   └── material-design-icons
│   │   ├── images
│   │   │   ├── GitHub-bw.png
│   │   │   └── Octocat.png
│   │   ├── javascripts (3 directories, 38 files)
│   │   └── stylesheets (2 directories, 39 files)
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
│       ├── comments    (0 directories, 7 files)
│       ├── devise      (7 directories, 11 files)
│       ├── forums      (0 directories, 5 files)
│       ├── layouts     (0 directories, 1 file)
│       ├── posts       (0 directories, 5 files)
│       ├── shared      (0 directories, 4 files)
│       └── users       (0 directories, 3 files)
├── bin
│   ├── bundle
│   ├── rails
│   ├── rake
│   ├── setup
│   └── spring
├── config              (3 directories, 21 files)
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
├── test                (6 directories, 21 files)
└── vendor
    └── assets
        ├── javascripts
        └── stylesheets

Project Total: 74 directories, 1791 files
```
