require "./lib/linked_list"
require "./lib/node"

describe LinkedList do
  describe "initialize" do
    it "is an instance of linkedlist" do
      list = LinkedList.new

      expect(list).to be_a(LinkedList)
    end

    it "should set a head" do
      list = LinkedList.new

      expect(list.head).to eq(nil)
    end

    it "should append a node" do
      list = LinkedList.new
      list.append("doop")
      list.append("deep")

      expect(list).to be_a(LinkedList)
      expect(list.head.data).to eq("doop")
      expect(list.head.next_node.data).to eq("deep")
    end

    it "should append a node" do
      list = LinkedList.new
      list.append("plop")
      list.append("suu")

      expect(list).to be_a(LinkedList)
      expect(list.head.data).to eq("plop")
      expect(list.head.next_node.data).to eq("suu")
    end

    it "should count my nodes" do
      list = LinkedList.new
      list.append("doop")
      list.append("deep")

      expect(list.count).to eq(2)
    end

    it "should count my nodes" do
      list = LinkedList.new
      list.append("doop")
      list.append("deep")
      list.prepend("dop")

      expect(list.count).to eq(3)
    end

    it "should turn list into string" do
      list = LinkedList.new
      list.append("doop")
      list.append("deep")

      expect(list.to_string).to eq("doop deep")
    end

    it "should turn list into string" do
      list = LinkedList.new
      list.append("plop")
      list.append("suu")

      expect(list.to_string).to eq("plop suu")
    end

    it "should turn list into string" do
      list = LinkedList.new
      list.append("deep")
      list.append("woo")
      list.append("shi")
      list.append("shu")
      list.append("blop")

      expect(list.to_string).to eq("deep woo shi shu blop")
    end

    it "should prepend a node" do
      list = LinkedList.new
      list.append("plop")
      list.append("suu")
      list.prepend("dop")

      expect(list.head.data).to eq("dop")
    end

    it "should insert a node" do
      list = LinkedList.new
      list.append("plop")
      list.append("suu")
      list.prepend("dop")
      list.insert(1, "woo")
      # If the position is greater than # of nodes then it appends at the end
      expect(list.to_string).to eq("dop woo plop suu")
    end

    it "should include?" do
      list = LinkedList.new
      list.append("deep")
      list.append("woo")
      list.append("shi")
      list.append("shu")
      list.append("blop")

      expect(list.include?("deep")).to be(true)
    end

    it "should find" do
      list = LinkedList.new
      list.append("deep")
      list.append("woo")
      list.append("shi")
      list.append("shu")
      list.append("blop")

      expect(list.find(2, 1)).to eq("shi")
      expect(list.find(1, 3)).to eq("woo shi shu")
    end

    it "should pop the last element" do
      list = LinkedList.new
      list.append("deep")
      list.append("woo")
      list.append("shi")
      list.append("shu")
      list.append("blop")

      expect(list.pop).to eq("blop")
      expect(list.pop).to eq("shu")
    end

    it "should turn list into string" do
      list = LinkedList.new
      list.append("deep")
      list.append("woo")
      list.append("shi")
      list.append("shu")
      list.append("blop")
      list.pop
      list.pop

      expect(list.to_string).to eq("deep woo shi")
    end
  end
end
