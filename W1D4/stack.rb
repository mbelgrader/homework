class Stack
  attr_reader :items

  def initialize
    @items = []
  end

  def add(el)
    @items << el
  end

  def remove
    @items.pop
  end

  def show
    puts "#{items}"
  end
end

stack = Stack.new

stack.add(1)
stack.add(2)
stack.add(3)
stack.show

stack.remove
stack.show

stack.add(4)
stack.show
