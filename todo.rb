require 'sinatra'
require 'pry'

get "/" do
    @tasks_manager = TaskManager.new
    @task = Task.new "name", "Description", "2006-09-05"
    @tasks_manager.add(@task)
    @tasks = @tasks_manager.tasks
    haml :index
end


get "/new" do
    haml :new
end
