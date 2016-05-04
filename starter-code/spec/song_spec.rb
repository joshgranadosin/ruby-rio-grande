require_relative 'spec_helper'
require_relative '../lib/Song'

describe Song do
	
	before(:context) do
		@song1 = Song.new("Let's Get It On", 1.29, "4:51", "Marvin Gaye")
	end

	describe "Initialization" do
    it "is a kind of the Item class" do
      expect(@song1).to be_a_kind_of(Item)
    end
    it "is a kind of the Digital_item class" do
    	expect(@song1).to be_a_kind_of(Digital_item)
    end
    it "is an instance of the Song class" do
    	expect(@song1).to be_an_instance_of(Song)
    end
    it "is assigned a name" do
      expect(@song1.name).to eq("Starter Pack")
    end
    it "is assigned a price" do
      expect(@song1.price).to eq(0.99)
    end
  end

  describe "Accessors" do
    it "quatity of digital item should always be 1" do
      expect(@song1.quantity).to eq(1)
    end
    it "should be able to get and set name" do
      @song1.name="New Name"
      expect(@song1.name).to eq("New Name")
    end
    it "should be able to get and set price" do
      @item.price=44.99
      expect(@song1.price).to eq(44.99)
    end
    it "should be able to get and set description" do
      expect(@song1.description).to eq("")
      @song1.description="test"
      expect(@song1.description).to eq("test")
    end
  end

  describe "Methods" do
    it "should be able to stock, quantity should stay as 1" do
      result = @song1.stock 5
      expect(result).to eq(true)
      expect(@song1.quantity).to eq(1)
    end
    it "should able to sell items regardless of stock since it's always 1" do
      result = @song1.sell 6
      expect(result).to eq(true)
      expect(@song1.quantity).to eq(1)
    end
    it "should be able to sell items and quantity should stay as 1" do
      result = @song1.sell 3
      expect(result).to eq(true)
      expect(@song1.quantity).to eq(2)
    end
  end

end
# You are on your own... good luck.