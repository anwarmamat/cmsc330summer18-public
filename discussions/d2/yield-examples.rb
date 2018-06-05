#
# CODE BLOCKS
#

# Simple code blocks
[1, 2, 3].each do |n|
  puts "#{n}"
end

[1, 2, 3].each {|n| puts "#{n}"}


# Using Yield
def method
  yield
end

method { puts "Hello, World" }
method # Exception - No block given


# Only Call Yield If A Block Was Given
def method
  puts block_given?
  if block_given?
    yield
  end
end

method # Prints false, no exception thrown
method { puts "Hello, World" } # Prints true and Hello, World


# Using Yield With Parameters
def exponent(base,power)
  if block_given?
    yield base, power, base**power
  else
    puts "#{base}^#{power} is #{base**power}"
  end
end

exponent(2,3) { |b,p,v| puts "#{b}^#{p} is #{v}" }


# Return Value Of Yield
def my_map(array)
  new_array = []

  array.each do |v|
    new_array << (yield v)
  end

  return new_array
end

doubled_array = my_map([1,2,3]) { |v| v*2 }
doubled_array.inspect
