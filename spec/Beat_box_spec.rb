require "rspec"
require "./lib/beat_box"

describe BeatBox do
  describe "#initialize" do
    it "is an instance of BeatBox" do
      bb = BeatBox.new

      expect(bb).to be_a(BeatBox)
    end
  end

  describe "#append" do
    it ".should append a node" do
      bb = BeatBox.new
      bb.prepend("shuuuuuuu")
      bb.append("deep doo ditt")

      expect(bb.list.head.data).to eq("shuuuuuuu")
      expect(bb.list.head.next_node.data).to eq("deep")
    end
  end

  describe "#prepend" do
    it ".should prepend a node" do
      bb = BeatBox.new
      bb.append("deep doo ditt")
      expect(bb.list.head.data).to eq("deep")

      bb.prepend("shuuuuuuu")
      expect(bb.list.head.data).to eq("shuuuuuuu")
    end
  end

  describe "#count" do
    it "should count my nodes" do
      bb = BeatBox.new
      bb.append("deep doo ditt woo hoo shu")

      expect(bb.count).to eq(6)
      expect(bb.list.count).to eq(6)
    end
  end

  describe "#play" do
    it "should play my beats" do
      bb = BeatBox.new
      beats = "deep doo ditt woo hoo shu"
      bb.append(beats)

      expect(bb).to receive(:`).with("say #{beats}")

      bb.play
    end
  end
end
