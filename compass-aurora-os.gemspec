require './lib/os-aurora'

Gem::Specification.new do |s|
  # General Project Information
  s.name = "os-compass-aurora"
  s.version = Aurora_OS::VERSION
  s.date = Aurora_OS::DATE
  #s.rubyforge_project = "compass-aurora"
  s.rubygems_version = "1.7.2"
  s.required_rubygems_version = Gem::Requirement.new(">= 1.2")

  # Author Information
  s.authors = ["Sam Richard", "Ian Carrico", "Eric Paul"]
  s.email = ["snugug@gmail.com", "ian@iancarrico.com", "eric@opensourcery.com"]
  #s.homepage = "http://drupal.org/project/aurora"

  # Project Description
  s.description = "Aurora Subthemes!"
  s.summary = "The companion gem for the Drupal Aurora base theme."
  s.licenses = ["GPL"]

  # Files to Include
  s.files  =  Dir.glob("lib/**/*.*")
  s.files +=  Dir.glob("stylesheets/**/*.*")
  s.files +=  Dir.glob("templates/**/*.*")

  # Dependent Gems

  s.add_dependency("compass",           [">= 0.12.2"])
  s.add_dependency("toolkit",           [">= 1.2.2"])
  s.add_dependency("sassy-buttons",     [">= 0.2.0"])
  s.add_dependency("compass-normalize", [">= 1.4.3"])
  s.add_dependency("bundler",           [">= 1.3.5"])
  s.add_dependency("css_parser",        [">= 1.3.4"])
end
