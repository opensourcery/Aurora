# OS Aurora Compass Extension
This is a fork of the original [Aurora Compass Extension](https://github.com/Snugug/Aurora) which adds the `arcrturus` flavor. The immediate intent of this flavor is to extend the `polaris` flavor towards more accessible markup.

It should be noted that this code is never used directly within a build. Rather, **this codebase is the source for the [OS ACE Ruby Gem](http://rubygems.org/gems/compass-aurora-os) that used to spin up the subtheme.**

## Usage
Spinning up a subtheme using this tool is relatively simple. However the Aurora system and the `arcturus` flavor subtheme have some dependencies.

### Install Dependencies
You'll need additional modules and a sass library, so your dependency stack looks like this:

* [Modernizr library](http://modernizr.com)
* [blockify module](https://drupal.org/project/blockify)
* [Magic module](https://drupal.org/project/magic)
* [Bedrock module](https://github.com/opensourcery/bedrock.git)
* [Alphecca SASS library](https://github.com/opensourcery/alphecca.git)

If you are using Drush Make, your makefile should include the declarations found in [this sample makefile](https://github.com/opensourcery/vista-campus/blob/master/vista_campus/theme.make). If you are not using Drush Make, see the makefile anyways to know where to install the dependencies.

### Spin Up a Subtheme

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
compass create my_theme -r aurora-os --using aurora-os/arcturus --css-dir=css --javascripts-dir=js --fonts-dir=fonts
bundle install
```

This gives you a subtheme of the `arcturus` flavor.

[Grunt](http://gruntjs.com/) is an awesome task automator for frontend development, so you should check it out. The Aurora system (and your subtheme) ships with some handy `grunt` utilities. To enable them, go into the theme's root folder and:
```bash
compass install aurora-os/grunt
npm install
```

### Theme Development with Arcturus
Once installed and set up, its really just like any other compass-based theme in that you need to "watch" the project directory. If you set up `grunt`, then you have the opportunity to automate other tasks along with compass watching. The basics here is you either need to

```bash
compass watch
```
or

```bash
grunt watch
```
At the root of the theme. I like grunt, maybe you don't, but you should. Using grunt at least for compass watching gives you LiveReload along with it for free.

### Tips & Tricks
`@TODO:` there's a bunch other opportunities for more automation. Document them here as they are discovered.

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

You might need admin/sudo for that one. Next, you want to do some local testing:

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

## Aruroa Documentation

## Aurora Compass Extension [![Gem Version](https://badge.fury.io/rb/compass-aurora.png)](http://badge.fury.io/rb/compass-aurora)

This compass extension is used to create Drupal sub-themes for the [Aurora base theme](http://drupal.org/project/aurora).

### How to Use

For full instructions on how to use this gem, check out the [Drupal project page](http://drupal.org/project/aurora) for full information.

