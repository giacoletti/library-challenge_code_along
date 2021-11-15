require "./lib/library.rb"

RSpec.describe Library do

  it "is expected to have a collection of books as an Array" do
    expect(subject.books).to be_instance_of Array
  end

  it "is expected to hold 5 items/books" do
    expect(subject.books.size).to eq 5
  end
end