require "rspec"
require "./lib/node"

describe Node do
  describe "initialize" do
    it "is an instance of node" do
      node = Node.new("plop")

      expect(node).to be_a(Node)
    end

    it "is has data" do
      node = Node.new("plop")

      expect(node.data).to eq("plop")
    end

    it "it adds another node" do
      node = Node.new("plop")

      expect(node.next_node).to eq(nil)
    end
  end
end
