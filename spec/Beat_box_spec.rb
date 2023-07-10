require "./lib/beat_box"
require "./lib/linked_list"
require "./lib/node"

describe BeatBox do
  describe "initialize" do
    it "is an instance of BeatBox" do
      bb = BeatBox.new

      expect(bb).to be_a(BeatBox)
    end
  end
end
