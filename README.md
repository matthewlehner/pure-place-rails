# Pure-Place for the Rails Asset Pipeline

Wrapped up the wonderful (Pure-Place)[https://github.com/jjt/pure-place] work and made a gem for the asset pipeline.

## Installation for Rails 3.1+

In your Gemfile:

    gem 'pure-place-rails', github: 'matthewlehner/pure-place-rails'

And then run:

    $ bundle install

Restart your server. Then rename application`.css` to application`.css.scss`:

    mv app/assets/stylesheeets/application.css app/assets/stylesheets/application.css.scss

Delete the sprocket directive in application.css.scss: [Why?](https://github.com/thoughtbot/bourbon/wiki/Rails-Sprockets)

    *= require_tree .

Import Pure-Place at the beginning of application.css.scss. All additional stylesheets must be imported below Pure-Place:

    @import "pure-place";
    @import "home";
    @import "users";
