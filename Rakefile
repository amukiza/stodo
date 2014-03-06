require 'rake'
require 'rspec/core/rake_task'
require 'bundler'
require "sinatra/activerecord/rake"
require './todo'

RSpec::Core::RakeTask.new(:test)

task :default do
    puts "Rake default task"
end

desc "Running unit tests" 
task :test do
    `rspec`
end

desc "Runs bundle install"
task :install do
  system %Q(bundle install)
end

desc "Starts the app"
task :start => [:install] do
  `bundle exec ruby todo.rb`
end

desc "Starts the app - will pickup changes without restarting the server"
task :shotgun => [:install] do
  `bundle exec shotgun -p 4567 todo.rb`
end

desc "Deploys the app"
task :deploy => [:install, :test] do
  `git push heroku master`
end
