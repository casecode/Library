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

# Public: Initializing a new book instance.
#
# title - Title of book to be added.
# author - Author of book to be added.
# @status - Set status to "available" when new book instance created.
# @borrower - Borrower to be set when book checked in or out.
class Book
  def initialize(title, author)
    @title = title
    @author = author
    @status = "available"
    @borrower = nil
    puts "#{@title} by #{@author} has been created."
  end

# Private: Adding methods to return title, author,
#   status and borrower of book.
  def title
    @title
  end

  def author
    @author
  end

  def status
    @status
  end

  def borrower
    @borrower
  end

# Public: Adding methods to update values of @status and @borrower.
#
# new_status - Sets new status of book (available/unavailble).
# new_borrower - Sets borrower of book.
#
# Examples:
#
#   status=("unavailable")
#
#   borrower=("borrower_name")
# 
# Return new values of @status and @borrower.
  def status=(new_value)
    @status = new_value
  end

  def borrower=(new_value)
    @borrower = new_value
  end
end
