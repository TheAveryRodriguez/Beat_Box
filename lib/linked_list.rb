# require "./lib/node"

class LinkedList
  attr_reader :head

  def initialize
    @head = nil
  end

  def append(data)
    new_node = Node.new(data)

    if @head.nil? # checks if nil
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

    end

    string_data.join(" ")
  end

  def prepend(data)
    @head = Node.new(data, @head)
  end

  def insert(position, data)
    new_node = Node.new(data)

    if position <= 0
      new_node.next_node = @head
      @head = new_node
    else
      current_node = @head
      count = 0

      while count < position - 1 || current_node.next_node.nil?
        current_node = current_node.next_node
        count += 1
      end

      new_node.next_node = current_node.next_node
      current_node.next_node = new_node
    end
  end

  def include?(data)
    #    @string_data = to_string.split
    #   @string_data.include?(data)
    current_node = @head
    while current_node
      return true if
      current_node.data == data
      current_node = current_node.next_node
    end

    false
  end
end
