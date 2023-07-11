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

  def prepend
    @list.prepend
  end

  def play
    beat = new_datas
    `say #{beat}`
  end
end
