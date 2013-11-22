# OS Aurora Compass Extension
This is a fork of the original Aurora compass extension which adds the `arcrturus` flavor. The immediate intent of this flavor is to extend the `polaris` flavor towards more accessible markup.

It should be noted that this code is never used directly within a build. Rather this codebase is the source for the gem that used to spin up the subtheme.

## Development Workflow
First, be sure you have the libraries for Sass+Compass ([install help](http://snugug.com/musings/installing-sass-and-compass-across-all-platform)):

* `ruby`, `rubygems`, and `compass`

### Development Workflow
The workflow is fairly straightforward:

1. Make changes.
2. Roll the gem:

`gem build os-compass-aurora.gemspec`

3. Install locally:

`gem isntall os-compass-aurora-0.0.1.gem`

You might need admin/sudo for that one. Next, you want to do some local testing:

1. Spin up a subtheme:

`compass create my_theme -r os-aurora --using os-aurora/arcturus --css-dir=css --javascripts-dir=js --fonts-dir=fonts`

2. Install the dependncies

`cd my_theme`

`bundle install`

See if you got out of the spin up what you thought you did. Rinse. Repeat.

### Pushing an Update
Once you have everything together for and update, we want to up the version
number and date in `/os-ace/lib/os-aurora.rb`, then push to github. (We're using github for now as )

4. Spin up a subtheme.
5. Run `bundle install`

?? RIGHT ??


# Original docs

## Aurora Compass Extension [![Gem Version](https://badge.fury.io/rb/compass-aurora.png)](http://badge.fury.io/rb/compass-aurora)

This compass extension is used to create Drupal sub-themes for the [Aurora base theme](http://drupal.org/project/aurora).

### How to Use

For full instructions on how to use this gem, check out the [Drupal project page](http://drupal.org/project/aurora) for full information.

