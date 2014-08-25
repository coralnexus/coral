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
  gem.rdoc_options << '--title' << 'Coral Orchestration and Research Library (alias)' <<
                      '--main' << 'README.rdoc' <<
                      '--line-numbers'
  
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

#-------------------------------------------------------------------------------
# Documentation

version   = CORL.VERSION
doc_title = "coral #{version}"

Rake::RDocTask.new do |rdoc|
  rdoc.rdoc_dir = File.join('rdoc', 'site', version)
  
  rdoc.title = doc_title
  rdoc.main  = 'README.rdoc'
  
  rdoc.options << '--line-numbers'
  rdoc.options << '--all'
  rdoc.options << '-w' << '2'
  
  rdoc.rdoc_files.include('*.rdoc')
  rdoc.rdoc_files.include('lib/**/*.rb')
end

#---

YARD::Rake::YardocTask.new do |ydoc|
  ydoc.files   = [ '*.rdoc', 'lib/**/*.rb' ]
  ydoc.options = [ "--output-dir yardoc", "--title '#{doc_title}'" ]
end
