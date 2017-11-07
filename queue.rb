class Queue
  def initialize
    @store = Array.new
  end

  def dequeue
    @store.pop
  end

  def enqueue(element)
    @store.unshift(element)
  end

  def size
    @store.size
  end

  def iterator
    @store
  end
end

queue = Queue.new
queue.enqueue(1)
queue.enqueue("a")
queue.enqueue("hello")
queue.enqueue("world")