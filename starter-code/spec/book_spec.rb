require_relative 'spec_helper'
require_relative '../lib/Book'

describe Book do

  before(:context) do
    @book1 = Book.new "Goodnight Moon", 6.00, 30, "Margaret Wise Brown"
  end

  describe "Initialization" do
    it "is a kind of the Item class" do
      expect(@book1).to be_a_kind_of(Item)
    end

    it "is an instance of the Book class" do
    	expect(@book1).to be_instance_of(Book)
    end

    it "is assigned a name" do
      expect(@book1.name).to eq("Goodnight Moon")
    end
    it "is assigned a price" do
      expect(@book1.price).to eq(6)
    end
    it "is assigned a number of pages" do
    	expect(@book1.pages).to eq(30)
    end
    it "is assigned an author" do
    	expect(@book1.author).to eq("Margaret Wise Brown")
    end
  end

  describe "Accessors" do
    it "should be able to get quantity" do
      expect(@book1.quantity).to eq(0)
    end
    it "should be able to get and set name" do
      @book1.name="New Name"
      expect(@book1.name).to eq("New Name")
    end
    it "should be able to get and set price" do
      @book1.price=44.99
      expect(@book1.price).to eq(44.99)
    end
    it "should be able to get and set description" do
      expect(@book1.description).to eq("")
      @book1.description="test"
      expect(@book1.description).to eq("test")
    end
  end

  describe "Methods" do
    it "should be able to stock" do
      result = @book1.stock 5
      expect(result).to eq(true)
      expect(@book1.quantity).to eq(5)
    end
    it "should not be able to sell more items than we have" do
      result = @book1.sell 6
      expect(result).to eq(false)
      expect(@book1.quantity).to eq(5)
    end
    it "should be able to sell items and update quantity" do
      result = @book1.sell 3
      expect(result).to eq(true)
      expect(@book1.quantity).to eq(2)
    end
  end

  describe "Part 2 Methods" do
    it "should be able to return" do
      result = @book1.return 2
      expect(result).to eq(true)
      expect(@book1.quantity).to eq(4)
    end
    it "should have a default weight of 0" do
      expect(@book1.weight).to eq(0)
    end
    it "should be able to set a new weight" do
      @book1.weight = 1
      expect(@book1.weight).to eq(1)
    end
    it "should be able to report a ship_price" do
      expect(@book1.ship_price).to eq(1.2)
    end
  end
end