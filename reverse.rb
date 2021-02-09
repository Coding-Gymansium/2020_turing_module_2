=begin
A fun exercise which is always good Ruby practice, and could be seen on some whiteboarding challenges, is to re-implement an existing Ruby method. This morning, we are going to be re-implementing `#reverse` and `#flatten`.
Part 1: 
Create a file in a folder using `touch reverse.rb`
In that file, write a method that will take a string as an argument and return that string reversed. Something like this:
```
def my_reverse(string)
  # your code goes here
end
puts my_reverse("hello")
```
Then running the file by using a `ruby reverse.rb` should output to the screen, `olleh`
Testing is not required for this challenge. Think about some edge cases, and make sure that spaces also work.
Part 2:
re-implement `#flatten

=end

#1
def my_reverse(string)
  puts string.reverse
end

my_reverse("hello")

#2
def flatten_it(arry)
  print arry.flatten
end

x = [1, 2, 3, [4, 5, 6]]

flatten_it(x)