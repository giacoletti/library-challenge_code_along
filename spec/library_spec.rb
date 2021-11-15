require "./lib/library.rb"

RSpec.describe Library do
  describe "collection of books" do
    it "is expected to have a collection of books as an Array" do
      expect(subject.books).to be_instance_of Array
    end

    it "is expected to hold 5 items/books" do
      expect(subject.books.size).to eq 5
    end
  end

  describe "a book" do
    it "is expected to have an availability status" do
      expect(subject.books.first.keys).to include(:available)
    end

    it "is expected to have a return date" do
      expect(subject.books.first.keys).to include(:return_date)
    end
  end
end
