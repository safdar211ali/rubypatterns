class Info
  attr_reader :fname

  def initialize
    @fname = []
  end
  def add(name)
    @fname << name
  end
  def show_name
   @fname.each do |n|
     puts n
   end
  end
end

class Person
  attr_accessor :name

  def initialize
    @name = ''
  end
end


