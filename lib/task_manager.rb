class TaskManager
  attr_accessor :tasks

 def initialize
     @tasks = []
 end

  def add task
      @tasks << task unless @tasks.include? task
      self
  end

  def delete name
    task = self.find(name)
    @tasks.delete(task)
  end

  def find name
    @tasks.select {|task| task.name.eql? name }.first
  end

end