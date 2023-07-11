require "./lib/node"

class LinkedList
  attr_accessor :head

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
    current_node = @head
    while current_node
      return true if
      current_node.data == data
      current_node = current_node.next_node
    end

    false
  end

  def find(position, data)
    if position < 0 || data <= 0 || @head.nil?
      return ""
    end

    found = ""
    current_node = @head
    count = 0
    amount_data = 0

    while count < position || current_node.nil?

      current_node = current_node.next_node
      count += 1
    end

    until amount_data == data || current_node.nil?
      found << current_node.data << " "
      current_node = current_node.next_node
      amount_data += 1
    end

    found.strip
  end

  def pop
    if @head.next_node.nil?
      @head = nil
    else
      current_node = @head
      previous_node = nil

      while current_node.next_node
        previous_node = current_node
        current_node = current_node.next_node
      end

      removed_data = current_node.data
      previous_node.next_node = nil
    end
    removed_data
  end
end
