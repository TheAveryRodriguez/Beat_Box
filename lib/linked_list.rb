require "./lib/node"

class LinkedList
  attr_reader :head

  def initialize
    @head = nil
  end

  def append(data)
    # data = "whatever passed in"
    new_node = Node.new(data)

    if @head.nil?
      @head = new_node
    else
      # Might need a loop (if until?)
      current_node = @head
    end
  end
end
