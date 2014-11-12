# Define a method hello(name) that takes a string representing a name
# and returns the string "Hello, " concatenated with the name.
def hello(name)
  "Hello, #{name}"
end


# Define a method starts_with_consonant?(s) that takes a string
# and returns true if it starts with a consonant and false otherwise.
# (For our purposes, a consonant is any letter other than A, E, I, O, U.)
# NOTE: be sure it works for both upper and lower case and for nonletters!
def starts_with_consonant?(s)
  s =~ /^[^aeiou]/i && s =~ /^[a-z]/i
end


# Define a method binary_multiple_of_4?(s) that takes a string
# and returns true if the string represents a binary number that is a multiple of 4.
# NOTE: be sure it returns false if the string is not a valid binary number!
def binary_multiple_of_4?(s)
    return true if s =~ /^0+$/
    x = s.to_i
    return false if x == 0
    x % 4 == 0
end

puts "sdjfsdlls".to_i

def test_hello
    raise "Should be: 'Hello, Ivan'" unless hello("Ivan") == "Hello, Ivan"
    raise "Should be: 'Hello, '" unless hello("") == "Hello, "
    puts 'test_hello passed'
end

test_hello

def test_starts_with_consonant
    raise "Starts with -" if starts_with_consonant?('-sdfsdf-')
    raise "Starts with a" if starts_with_consonant?('asdfsdf-')
    raise "Starts with U" if starts_with_consonant?('Uasdfsdf-')
    raise "Starts with d" unless starts_with_consonant?('dasdfsdf-')
    puts 'test_starts_with_consonant passed'
end

test_starts_with_consonant

def test_binary_multiple_of_4
    raise "0 should be multple of 4" unless binary_multiple_of_4?("000")
    raise "0 should be multple of 4" unless binary_multiple_of_4?("0")
    raise "16 should be multple of 4" unless binary_multiple_of_4?("16")
    raise "10 should not be multple of 4" if binary_multiple_of_4?("10")
    raise "aa should not be multple of 4" if binary_multiple_of_4?("aa")
    puts "test_binary_multiple_of_4 passed"
end

test_binary_multiple_of_4