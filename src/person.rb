require_relative 'libs/message'

class Person
  def initialize(name)
    @name = name
  end

  def hello
    "#{Message.hello}, my name is #{@name}."
  end
end

