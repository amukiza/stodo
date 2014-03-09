require 'capybara'
require 'capybara/cucumber'
require 'sinatra'
require "rspec"

require_relative "../../todo"

Capybara.app = Sinatra::Application