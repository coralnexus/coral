# encoding: utf-8

require 'rubygems'
require 'rake'
require 'bundler'
require 'jeweler'
require 'rspec/core/rake_task'

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

#-------------------------------------------------------------------------------
# Testing

RSpec::Core::RakeTask.new(:spec, :tag) do |spec, task_args|
  options = []
  options << "--tag #{task_args[:tag]}" if task_args.is_a?(Array) && ! task_args[:tag].to_s.empty?
  spec.rspec_opts = options.join(' ')
end

task :default => :spec
