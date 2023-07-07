require "./lib/linked_list"
require "./lib/node"

describe LinkedList do
  describe "initialize" do
    it "is an instance of linkedlist" do
      list = LinkedList.new

      expect(list).to be_a(LinkedList)
    end

    it "should return nil" do
      list = LinkedList.new

      expect(list.head).to eq(nil)
    end

    it "should add new data to the list" do
      list = LinkedList.new
      list.append("doop")

      expect(list).to be_a(LinkedList)
      expect(list.head.data).to eq("doop")
      expect(list.head.next_node).to eq(nil)
    end
  end
end
