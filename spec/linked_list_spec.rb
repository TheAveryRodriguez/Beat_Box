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

      expect(list).to be_a(LinkedList)
      expect(list.head.data).to eq("doop")
      expect(list.head.next_node).to eq(nil)
      expect(list).to be_a(LinkedList)
    end

    it "should count my nodes" do
      list = LinkedList.new
      list.append("doop")

      expect(list.count).to eq(1)
    end

    it "should turn list into string" do
      list = LinkedList.new
      list.append("doop")

      expect(list.to_string).to eq("doop")
    end
  end
end
