# Define a class BookInStock which represents a book with an isbn number, isbn,
# and price of the book as a floating-point number, price, as attributes.
# The constructor should accept the ISBN number (a string) as the first argument
# and price as second argument, and should raise ArgumentError
# (one of Ruby's built-in exception types) if the ISBN number is the empty string
# or if the price is less than or equal to zero.
#
# Include the proper getters and setters for these attributes. Include a method
# price_as_string that returns the price of the book with a leading dollar sign
# and trailing zeros, that is, a price of 20 should display as "$20.00"
# and a price of 33.8 should display as "$33.80".

class BookInStock
    attr_accessor :isbn, :price
    
    def initialize(isbn, price)
        raise ArgumentError if isbn.empty? || price <= 0
        @isbn = isbn
        @price = price.to_f
    end
    
    def price_as_string
        sprintf("$%.2f",price)
    end
end
    





def test_BookInStock
    book = BookInStock.new("12345", 10.0)
    raise "'12345', 10.0" unless book.isbn == "12345" and book.price == 10.0 and book.price_as_string == "$10.00"
    begin
        book = BookInStock.new("", 0.2)
        raise "Empty isbn not raised"
    rescue ArgumentError
    end
    begin
        book = BookInStock.new("12346", 0)
        raise "Zero price not raised"
    rescue ArgumentError
    end
    book = BookInStock.new("12347", 1.0)
    raise "'12347', 1.0" unless book.isbn == "12347" and book.price == 1.0 and book.price_as_string == "$1.00"
    puts "test_BookInStock passed"
end

test_BookInStock