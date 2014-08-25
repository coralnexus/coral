
#*******************************************************************************
# CORL (Cluster Orchestration and Research Library)
#
# provides CORL (github.com/coralnexus/corl)
# built on Nucleon (github.com/coralnexus/nucleon)
#
# A framework that provides a simple foundation for growing organically in
# the cloud.
#
# Author:: Adrian Webb (mailto:adrian.webb@coralnexus.com)
# License:: Apache license, version 2
#-------------------------------------------------------------------------------
  
require 'rubygems'
require 'corl'

#*******************************************************************************
## Coral Meta Package
##
module Coral
  VERSION = File.read(File.join(File.dirname(__FILE__), '..', 'VERSION'))
end
