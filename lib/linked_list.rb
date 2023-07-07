require "./lib/node"

class LinkedList
  attr_reader :head

  def initialize
    @head = nil
  end

  def append(data)
    next_node = Node.new(data)

    if @head.nil?
      @head = next_node
    else
      # Might need a loop (if until?)
      current_node = @head
    end
  end

  def count
    count = 0
    current_node = @head

    while current_node
      count += 1
      current_node = current_node.next_node
    end
  end
end
