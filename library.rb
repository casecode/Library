class Library
  attr_reader :books

# Public: Initialize new empty library.
  def initialize
    @books = []
  end

# Public: Display status of each book.
#
# Returns and puts title, author and status (available/checked out)
#   of each book in library.
  def list_books(books = nil)
    books ||= @books

    books.each do |book|
      puts "#{book.title} by #{book.author}: #{book.status}"
    end
  end

# Public: Puts borrowed books.
#
# Returns title and author of books with status of "checked out."
  def borrowed_books
    @books.each do |book|
      if book.status == "checked out"
        puts "#{book.title} by #{book.author}: Checked out by #{book.borrower.name}."
      end
    end

    checked_out_books, available_books = @books.partition do |book|
      book.status == "checked out"
    end

    list_books checked_out_books

  end

# Public: Puts available books.
#
# Returns title and author of books with status of "available."
  def available_books
    @books.each do |book|
      if book.status == "available"
        puts "#{book.title} by #{book.author} is available."
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
  #   # ricardo.borrower_books => [stranger]
  #
  # Returns borrower and status of checked out book, as well as
  # borrowered_books array of borrower, with checked out book added
  # to array.
  def check_out(user, book)
    if user.borrowed_books_count == 2
      puts "Sorry, that user already has two books checked out."
    elsif book.status == "checked out"
      puts "Sorry, that book in not available."
    else
      book.borrower = user
      user.borrowed_books.push(book)
      book.status = "checked out"
      puts "#{user.name} has now checked out #{book.title} by #{book.author}."
    end
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
# Public: Initialize Borrower instance.
#
# name - Name of borrower.
# @borrowed_books - Create empty array of borrower's borrowed books.
  def initialize(name)
    @name = name
    @borrowed_books = []
    puts "Borrower #{@name} has been added"
  end

# Private: Methods to call borrowed_books array and name of borrower.
#
# Returns @borrowed_books array and @name.
  def borrowed_books
    @borrowed_books
  end

  def name
    @name
  end

# Private: Count of books borrower has checked out.
#
# Returns number of books borrower has checked out.
  def borrowed_books_count
    @borrowed_books.length
  end

# Public: List list of borrowed books.
#
# Example:
#
#   ricardo.borrower_books_list
#
# Returns list of books borrower has checked out.
  def borrowed_books_list
    @borrowed_books.each do |book|
      puts "#{book.title} by #{book.author}"
    end
  end
end

# Public: Initializing a new book instance.
#
# title - Title of book to be added.
# author - Author of book to be added.
class Book
  def initialize(title, author)
    @title = title
    @author = author
    # Set status to "available" when new book instance created.
    @status = "available"
    @borrower = nil
    puts "#{@title} by #{@author} has been created."
  end

# Public: Adding methods to return title, author,
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
  def status=(new_status)
    @status = new_status
  end

  def borrower=(new_borrower)
    @borrower = new_borrower
  end
end
