require "./lib/node"

class LinkedList
  attr_reader :head

  def initialize
    @head = nil
  end

  def append(data)
    new_node = Node.new(data)

    if @head.nil?
      @head = new_node
    else
      current_node = @head
      until current_node.next_node.nil?
        current_node = current_node.next_node
      end
      current_node.next_node = new_node
    end
  end

  def count
    running_tally = 0
    current_node = @head

    while current_node
      running_tally += 1
      current_node = current_node.next_node
    end

    running_tally
  end

  def to_string
    string_data = []
    current_node = @head

    while current_node
      string_data << current_node.data
      current_node = current_node.next_node

      until current_node.nil?
      end
    end

    string_data.join(" ")
  end
end
