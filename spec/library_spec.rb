require "./lib/library.rb"

RSpec.describe Library do
  describe "instance methods" do
    it { is_expected.to respond_to(:books) }
    it { is_expected.to respond_to(:search) }
  end

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

  describe "#search" do
    describe "using title" do
      it "is expected to return one object" do
        book = subject.search("Pippi Longstocking gar ombord")
        expected_result = {
          "book": {
            'title': "Pippi Longstocking gar ombord",
            "author": "Astrid Lindgren",
          },
          'available': true,
          'return_date': "",
        }
        expect(book).to eq expected_result
      end
    end
  end
end
