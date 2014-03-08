class TaskManager
  attr_accessor :tasks

 def initialize
     @tasks = []
 end
  def add task
      @tasks << task
  end
end
