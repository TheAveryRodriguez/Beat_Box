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

  describe "#all" do
    it "returns all my beats" do
      bb = BeatBox.new

      expect(bb.all).to be_empty

      bb.append("deep")

      expect(bb.all).to eq("deep")

      bb.prepend("bop")

      expect(bb.all).to eq("bop deep")
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

  describe "vaild_beats" do
    it "returns list of valid beats" do
      bb = BeatBox.new

      expect(bb.valid_beats).to eq("tee dee deep bop boop la na")
    end
  end

  describe "beat validation" do
    it "only adds beats from the approved list" do
    end
  end
end
