# encoding: utf-8

require 'rubygems'
require 'rake'
require 'bundler'
require 'jeweler'
require 'rspec/core/rake_task'
require 'rdoc/task'
require 'yard'

require './lib/coral.rb'

#-------------------------------------------------------------------------------
# Dependencies

begin
  Bundler.setup(:default, :development)
rescue Bundler::BundlerError => e
  $stderr.puts e.message
  $stderr.puts "Run `bundle install` to install missing gems"
  exit e.status_code
end

#-------------------------------------------------------------------------------
# Gem specification

Jeweler::Tasks.new do |gem|
  # gem is a Gem::Specification... see http://docs.rubygems.org/read/chapter/20 for more options
  gem.name                  = "coral"
  gem.homepage              = "http://github.com/coraltech/coral"
  gem.rubyforge_project     = 'coral'
  gem.license               = "Apache License, Version 2.0"
  gem.email                 = "adrian.webb@coralnexus.com"
  gem.authors               = ["Adrian Webb"]
  gem.summary               = %Q{Alternative gem name for the CORL system}
  gem.description           = File.read('README.rdoc')
  gem.required_ruby_version = '>= 1.9.1'
  gem.has_rdoc              = false
  
  # Dependencies defined in Gemfile
end

Jeweler::RubygemsDotOrgTasks.new
