require "yaml"

class Library
  attr_accessor :books

  def initialize
    @books = YAML.load_file("./lib/data.yml")
  end

  def search(title)
    book = @books.detect {|item| item[:book][:title] == title }
  end
end