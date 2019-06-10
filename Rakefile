ENV['BUNDLE_GEMFILE'] ||= File.expand_path('Gemfile', __FILE__)
require 'bundler/setup' if File.exists?(ENV['BUNDLE_GEMFILE'])
require_relative './app'
require 'rake'
require 'rake/testtask'

Rake::TestTask.new do |t|
  t.pattern = "tests/*.rb"
end

task default: :test

