class Task
  attr_accessor :date, :description, :name

  def initialize(name, description, date)
    @name = name
    @description = description
    @date = date
  end
  
  def ==(o)
      o.class == self.class && self.state == o.state
  end
  
  def state
      [@name, @description, @date]
  end
end
