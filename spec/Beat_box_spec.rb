require "./lib/beat_box"
require "./lib/linked_list"
require "./lib/node"

describe BeatBox do
  describe "initialize" do
    it "is an instance of BeatBox" do
      bb = BeatBox.new

      expect(bb).to be_a(BeatBox)
    end

    it "should append a node" do
      bb = BeatBox.new
      bb.append("deep doo ditt")

      expect(bb).to be_a(BeatBox)
      expect(bb.list.head.data).to eq("deep")
    end

    it "should count my nodes" do
      bb = BeatBox.new
      bb.append("deep doo ditt woo hoo shu")

      expect(bb.count).to eq(6)
      expect(bb.list.count).to eq(6)
    end
  end
end
