require 'compass'
require 'toolkit'
require 'sassy-buttons'
require 'compass-normalize'

extension_path = File.expand_path(File.join(File.dirname(__FILE__), ".."))
Compass::Frameworks.register('os-aurora', :path => extension_path)

module Aurora_OS
  VERSION = "0.0.1"
  DATE = "2013-11-21"
end
