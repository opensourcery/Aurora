description "Aurora Sub Theme"
no_configuration_file!

# Add in custom config file.
file '../shared/config.rb.erb', :to => "config.rb", :erb => true

# Add in README
file '../shared/README-Sass.md',  :like => :stylesheet, :to => 'README.md'
file '../shared/README-Partials.md',  :like => :stylesheet, :to => 'partials/README.md'
file '../shared/README-templates.md', :to => "templates/README.md"

# ERB ALL the Drupal files!
file './arcturus.info.erb', :to => "#{options[:project_name] || File.basename(Compass.configuration.project_path)}.info", :erb => true

file './template.php.erb', :to => "template.php", :erb => true

# Drupal templates
file './tpls/page.tpl.php.txt', :to => "templates/page.tpl.php"
file './tpls/field--field-slideshow-slide-body-text.tpl.php.txt', :to => "templates/field--field-slideshow-slide-body-text.tpl.php"
file './tpls/field--field-slideshow-slide-link.tpl.php.txt', :to => "templates/field--field-slideshow-slide-link.tpl.php"
file './tpls/field--field-slideshow-slide.tpl.php.txt', :to => "templates/field--field-slideshow-slide.tpl.php"

# Stylesheets
discover :stylesheets

file '../shared/_functions.scss', :like => :stylesheet, :to => 'partials/global/_functions.scss'
file '../shared/_mixins.scss', :like => :stylesheet, :to => 'partials/global/_mixins.scss'
file '../shared/_extendables.scss', :like => :stylesheet, :to => 'partials/global/_extendables.scss'

# Developer Consistency
file '../shared/Gemfile.txt', :to => 'Gemfile'
file '../shared/editorconfig.txt', :to => '.editorconfig'
file './gitignore.txt', :to => ".gitignore"

help %Q{
  @TODO Write some help text.
}

welcome_message %Q{
  Arcturus based Aurora Subtheme.

  See http://snugug.github.io/Aurora/ for full documentation on the Aurora base system.

  You now need to run `bundle install` from inside your new subtheme to install the required dependencies. This will create a Gemfile.lock file, add this to your version control.

  When you are ready start compiling, run `bundle exec compass watch` instead of simply `compass watch` to ensure you are compiling using your dependent Compass extensions.

  Alternatively, if you are using Grunt, simply run `grunt watch` to compile and start LiveReload.
}
