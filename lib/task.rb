class Task
  attr_accessor :date, :description, :name

  def initialize(date, description, name)
    @date = date
    @description = description
    @name = name
  end
end
