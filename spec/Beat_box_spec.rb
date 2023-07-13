require "rspec"
require "./lib/beat_box"

describe BeatBox do
  describe "#initialize" do
    it "is an instance of BeatBox" do
      bb = BeatBox.new

      expect(bb).to be_a(BeatBox)
      expect(bb.list.head).to eq(nil)
    end

    it "can take in an initial beat" do
      bb = BeatBox.new("deep")

      expect(bb).to be_a(BeatBox)
      expect(bb.list.head.data).to eq("deep")
    end
  end

  describe "#append" do
    it ".should append a node" do
      bb = BeatBox.new
      bb.prepend("tee")
      bb.append("deep doo ditt")

      expect(bb.list.head.data).to eq("tee")
      expect(bb.list.head.next_node.data).to eq("deep")
    end
  end

  describe "#prepend" do
    it ".should prepend a node" do
      bb = BeatBox.new
      bb.append("deep doo ditt")
      expect(bb.list.head.data).to eq("deep")

      bb.prepend("la")
      expect(bb.list.head.data).to eq("la")
    end
  end

  describe "#count" do
    it "should count my nodes" do
      bb = BeatBox.new
      bb.append("tee dee deep bop boop la na")

      expect(bb.count).to eq(7)
      expect(bb.list.count).to eq(7)
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
      beats = "tee dee deep bop boop la na"
      bb.append(beats)

      # expect(bb).to receive(:`).with("say #{beats}")

      bb.play
    end
  end

  describe "vaild_beats" do
    it "returns list of valid beats" do
      bb = BeatBox.new
      expected_beats = "tee dee deep bop boop la na".split(" ")

      expect(bb.valid_beats).to eq(expected_beats)
    end
  end

  describe "beat validation" do
    it "only adds beats from the approved list" do
      bb = BeatBox.new("deep")

      bb.append("Mississippi")

      expect(bb.all).to eq("deep")

      bb.prepend("tee tee tee Mississippi")

      expect(bb.all).to eq("tee tee tee deep")
    end
  end
end
