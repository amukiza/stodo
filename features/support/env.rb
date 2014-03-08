require 'capybara'
require 'capybara/cucumber'
require 'sinatra'
require_relative "../../todo"

Capybara.app = Sinatra::Application
