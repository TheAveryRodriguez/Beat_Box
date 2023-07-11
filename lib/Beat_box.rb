class BeatBox
  attr_reader :list

  def initialize
    @list = LinkedList.new
  end

  def append(data)
    new_datas = data.split(" ")
    new_datas.each { |new_data| @list.append(new_data) }
  end

  def count
    @list.count
  end

  def prepend(data)
    @list.prepend(data)
  end

  def play
    beats = @list.to_string

    `say #{beats}`
  end
end
