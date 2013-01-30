
home = File.dirname(__FILE__)

$:.unshift(home) unless
  $:.include?(home) || $:.include?(File.expand_path(home))
  
#-------------------------------------------------------------------------------
  
require 'rubygems'
require 'coral_cloud'
require 'coral_plan'
require 'coral_vagrant'

#*******************************************************************************
# Coral Meta Package
#
# This provides all Coral libraries in an easy to use package.
#
# Author::    Adrian Webb (mailto:adrian.webb@coraltech.net)
# License::   GPLv3
module Coral
module Meta
  
  VERSION = File.read(File.join(File.dirname(__FILE__), '..', 'VERSION'))

end
end