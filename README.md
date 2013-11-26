# OS Aurora Compass Extension
This is a fork of the original Aurora compass extension which adds the `arcrturus` flavor. The immediate intent of this flavor is to extend the `polaris` flavor towards more accessible markup.

It should be noted that this code is never used directly within a build. Rather this codebase is the source for the gem that used to spin up the subtheme.

## Development Workflow
To be clear, this is the development workflow for **maintaining the gem source**, if you just want to use the extension to spin up a subtheme, head over to the [gem repo](https://github.com/opensourcery/os-ace_gem).

To get started, be sure you have the libraries for Sass+Compass ([install help](http://snugug.com/musings/installing-sass-and-compass-across-all-platform)):

* `ruby`, `rubygems`, and `compass`

The workflow is fairly straightforward:

* Be sure you have dependencies:

```bash
bundle install
```

* Make changes, and roll the gem:

```bash
gem build compass-aurora-os.gemspec
```

* Install locally:

```bash
gem install compass-aurora-os-0.1.0.gem
`

You might need admin/sudo for that one. Next, you want to do some local testing:

* Spin up a subtheme:

```bash
compass create my_theme -r aurora-os --using aurora-os/arcturus --css-dir=css --javascripts-dir=js --fonts-dir=fonts
````

* Install the dependncies

```bash
cd my_theme
bundle install
```

See if you got out of the spin up what you thought you did. Rinse. Repeat. There are grunt utilites bundled with the output of the gem as well, see the
[gem repo](https://github.com/opensourcery/os-ace_gem) for more.

### Pushing an Update
Once you have everything together for and update, we want to up the version
number and date in `/os-ace/lib/os-aurora.rb`, then push to github. (We're using github for now as we are not sure if we want another gem on rubygems)

# Original docs

## Aurora Compass Extension [![Gem Version](https://badge.fury.io/rb/compass-aurora.png)](http://badge.fury.io/rb/compass-aurora)

This compass extension is used to create Drupal sub-themes for the [Aurora base theme](http://drupal.org/project/aurora).

### How to Use

For full instructions on how to use this gem, check out the [Drupal project page](http://drupal.org/project/aurora) for full information.

