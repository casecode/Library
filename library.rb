class Library
# Public: Initialize new empty library.
  def initialize
    @books = []
  end

# Private: Method to return @books array.
  def books
    @books
  end

# Public: Display status of each book.
#
# Returns and puts title, author and status (available/checked out)
#   of each book in library.
  def list_books
    @books.each do |book|
      puts "#{book.title} by #{book.author}: #{book.status}"
    end
  end

# Public: Puts borrowed books.
#
# Returns title and author of books with status of "checked out."
  def borrowed_books
    @books.each do |book|
      if book.status == "checked out"
        puts "#{book.title} by #{book.author}"
      end
    end
  end

# Public: Puts available books.
#
# Returns title and author of books with status of "available."
  def available_books
    @books.each do |book|
      if book.status == "available"
        puts "#{book.title} by #{book.author}"
      end
    end
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

# Public: Check out a book.
#
# user - borrower checking out book.
# book - book being checked out.
#
# Example
# 
#   check_out(ricardo, stranger)
#   # stranger.borrower => ricardo
#   # stranger.status => "checked out"
#
# Returns borrower and status of checked out book, as well as
#   borrowered_books array of borrower, with checked out book added
#   to array.
  def check_out(user, book)
    if user.borrowed_books.length == 2
      return "Sorry, that user already has two books checked out."
    elsif book.status == "checked out"
      return "Sorry, that book in not available."
    else
      book.borrower = user
      user.borrowed_books.push(book)
      book.status = "checked out"
  end

# Public: Check in book.
#
# book - Book to be checked in.
#
# Example:
# 
#   check_in(stranger)
#
# Returns book.status of "available" and the borrower_books array
#   of the book's borrower with the book deleted from the array.
  def check_in(book)
    book.status = "available"
    book.borrower.borrowed_books.delete(book.borrower.borrowed_books[book])
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
# new_status - Sets new status of book (available/checked out).
# new_borrower - Sets borrower of book.
#
# Examples:
#
#   status=("checked out")
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
