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

  def add_book(book)
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
  end
end
