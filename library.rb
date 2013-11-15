class Library
  def initialize
    @books = []
  end

  def books
  end

  def list_books
  end

  def borrowed_books
  end

  def available_books
  end

# Public: Add instance of book to the library.
#
# book -  Book instance to be added to @books array.
#
# Example
#
#   add_book(stranger)
#   # @book => [stranger]
#
# Returns @books array with new book instance added.
  def add_book(book)
    @books.push(book)
  end

  def check_out(user, book)
  end

  def check_in(book)
  end
end

class Borrower
  def initialize(name)
    @name = name
    puts "Borrower #{@name} has been added"
  end

  def borrowed_books
  end

  def name
  end

  def borrowed_books_count
  end

  def borrowed_books_list
  end
end

class Book
  def initialize(title, author)
    @title = title
    @author = author
    puts "#{@title} by #{@author} has been created."
  end
end
