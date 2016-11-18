class Queue
  attr_reader :items

  def initialize
    @items = []
  end

  def enqueue(el)
    @items << el
  end

  def dequeue
    @items.shift
  end

  def show
    puts "#{items}"
  end
end

my_queue = Queue.new
my_queue.enqueue(1)
my_queue.enqueue(2)
my_queue.enqueue(3)
my_queue.show # [1, 2, 3]

my_queue.dequeue
my_queue.show # [2, 3]

my_queue.enqueue(4)
my_queue.enqueue(5)
my_queue.show # [2, 3, 4, 5]

my_queue.dequeue
my_queue.show # [3, 4, 5]

my_queue.dequeue
my_queue.show # [4, 5]
