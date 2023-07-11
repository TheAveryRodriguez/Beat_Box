require "./lib/linked_list"

class BeatBox
  attr_reader :list

  def initialize(beat = nil)
    @list = LinkedList.new

    append(beat) if beat
  end

  def append(data)
    new_datas = parse_data(data)
    new_datas.each { |new_data| @list.append(new_data) }
  end

  def count
    @list.count
  end

  def prepend(data)
    new_datas = parse_data(data)
    new_datas.each { |new_data| @list.prepend(new_data) }
  end

  def valid_beats
    "tee dee deep bop boop la na".split(" ")
  end

  def all
    @list.to_string
  end

  def play
    `say #{all}`
  end

  def parse_data(data)
    data.split(" ").select do |beat|
      valid_beats.include?(beat)
    end
  end
end
