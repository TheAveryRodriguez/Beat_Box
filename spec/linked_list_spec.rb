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

    # it "should addnew data to the list" do
    # list = LinkedList.new???
    # expect(list.append).to eq("doop")
  end
end
