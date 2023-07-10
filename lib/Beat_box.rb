class BeatBox
  attr_reader :list

  def initialize
    @list = LinkedList.new
  end
end

def append(data)
  @list.append
end

# def append(list)
#   new_node = Node.new(data)

#   if @head.nil? # checks if nil
#     @head = new_node
#   else
#     current_node = @head
#     until current_node.next_node.nil?
#       current_node = current_node.next_node
#     end
#     current_node.next_node = new_node
#   end
# end

def count
  @list.count
end

# def prepend

# def play
