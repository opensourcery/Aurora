# OS Aurora Compass Extension
This is a fork of the original [Aurora Compass Extension](https://github.com/Snugug/Aurora) which adds the `arcrturus` flavor. The immediate intent of this flavor is to extend the `polaris` flavor towards more accessible markup.

It should be noted that this code is never used directly within a build. Rather, **this codebase is the source for the [OS ACE Ruby Gem](http://rubygems.org/gems/compass-aurora-os) that used to spin up the subtheme.**

## Usage
This gem is most easily used by using [Turnip](https://github.com/opensourcery/turnip). See the documentation there for how to spin up a site that makes use of this gem.

### Usage Concept
Spinning up a subtheme using this tool is relatively simple. However the Aurora system and the `arcturus` flavor subtheme have some dependencies.

#### Install Dependencies
You'll need additional modules and a sass library, so your dependency stack looks like this:

* [Modernizr library](http://modernizr.com)
* [Blockify module](https://drupal.org/project/blockify)
* [Magic module](https://drupal.org/project/magic)
* [Bedrock module](https://github.com/opensourcery/bedrock.git)
* [Alphecca SASS library](https://github.com/opensourcery/alphecca.git)

If you are using Drush Make, your makefile should include the declarations found in [this sample makefile](https://github.com/opensourcery/vista-campus/blob/master/vista_campus/theme.make). If you are not using Drush Make, see the makefile anyways to know where to install the dependencies.

#### Spin Up a Subtheme

Since the gem is coupled so tightly with Bedrock and Alphecca, you will need to add some symlinks to the directory tree before spinning up the theme. Again refere to [Turnip documentation](https://github.com/opensourcery/turnip) for more information.

Install the gem:
```bash
gem install compass-aurora-os
```
Or, if you already have it installed, make sure it's updated to get the latest
base theme concept:
```bash
gem update compass-aurora-os
```

Head into your drupal project tree and spin up the theme, and install the dependencies:
```bash
cd path/to/themes
compass create my_theme -r aurora-os --using aurora-os/arcturus \
--css-dir=css \
--javascripts-dir=js \
--fonts-dir=fonts \
--images-dir=images
bundle install
```

This gives you a subtheme of the `arcturus` flavor.

[Grunt](http://gruntjs.com/) is an awesome task automator for frontend development, so you should check it out. The Aurora system (and your subtheme) ships with some handy `grunt` utilities. Before you start with that, be sure to [install Node.js](http://nodejs.org/) first, then set up `bower` and `grunt-cli` on your system:

```bash
sudo npm install -g bower
sudo npm install -g grunt-cli
```
Then set up `grunt` and `bower` for your project:

```bash
cd /path/to/theme
compass install aurora-os/bower
bower install
compass install aurora-os/grunt
npm install
```

### Theme Development with Arcturus
Once installed and set up, its really just like any other compass-based theme in that you need to "watch" the project directory:

```bash
grunt watch
```

#### Pushes & Deployments
Before pushing your code to github, you always want to build/optimize your theme resources:

```bash
grunt build
````

This will minify images, recompile CSS and minify javascript.

Before deploying to production from your local machine, you'll want to?

```bash
@todo create custom trim task
```

## Contributing
To get started, be sure you have the libraries for Sass+Compass ([install help](http://snugug.com/musings/installing-sass-and-compass-across-all-platform)):

* `ruby`, `rubygems`, and `compass`

The workflow is fairly straightforward:

* Make changes, and roll the gem:

```bash
gem build compass-aurora-os.gemspec
```

* Install locally:

```bash
gem install compass-aurora-os-0.1.0.gem
```

You might need admin/sudo for that one. Note that the version number specified in the above command should NOT be found on rubygems.org and the local gem you just built should be installed. You might want to do a cleanup of the older version as well to ensure you are using that new version.

Next, you want to do some local testing:

* Spin up a subtheme:

```bash
compass create my_theme -r aurora-os --using aurora-os/arcturus --css-dir=css --javascripts-dir=js --fonts-dir=fonts
````

* Install the dependencies

```bash
cd my_theme
bundle install
```

See if you got out of the spin up what you thought you did. Rinse. Repeat.

**Pull requests are encouraged.**

## Aurora Compass Extension [![Gem Version](https://badge.fury.io/rb/compass-aurora.png)](http://badge.fury.io/rb/compass-aurora)

This compass extension is used to create Drupal sub-themes for the [Aurora base theme](http://drupal.org/project/aurora).

### How to Use

For full instructions on how to use this gem, check out the [Drupal project page](http://drupal.org/project/aurora) for full information.

