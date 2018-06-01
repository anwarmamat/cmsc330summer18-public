# Notes 1: Thanos Isn't a Rustacean
Date: Thursday May 31st

<!--- ADMIN: Finish P0 today and run the tests to make sure your
      setup is correct. Come to office hours if you cannot get it
      running. -->

<!--- ADMIN: Start work on P1. Don't begin any of the parsing until
      you know regular expressions. -->

<!--- TIME: 30 minutes -->

## Why does Ruby feel different?

<!--- CUE: Have students introduce themselves to the person on their
      left and right. Name, hometown, hobby, favorite CS class, etc. -->

What's the biggest difference between Ruby and the languages you've
seen so far (i.e. Java and C)?

<!--- CUE: Give a few minutes for discussion and ask for answers.
      It's open-ended so just about everything is acceptable. -->

There are many possible answers. Here are some:

* Ruby makes you happy (whereas Java and C make you weep, or at least
  makes me weep...)
* Ruby is concise
* **Ruby is dynamically typed**

For me the most last one if the most consequential. Let's take a look
at some examples.

<!--- NOTE: Have two shells next two each other open. One with the
      JShell repl and one with irb. -->

```java
if (true) {
    System.out.println("A");
} else {
    System.out.println("A" * "B");
}
```

This program is **well-defined** meaning that if we could run it (by
perhaps bypassing the type checker) it would work fine and output
"A". However, this program is not **well-typed** and Java let's us
know there is a type error.

```
| Error:
| bad operand types for binary operator '*'
|   first type:  java.lang.String
|   second type: java.lang.String
|    System.out.println("A" * "B");
|                       ^-------^
```

However, in Ruby it works fine.

```ruby
if true then
    puts "A"
else
    puts ("A" * "B")
end
```

This outputs "A" as we expect.

Let's look at another difference. In Java we know that if we have
an ArrayList that the types of elements are fixed by its generic.

```java
ArrayList<Integer> arr = new ArrayList<>();
arr.add(0);
arr.add(1);
arr.add("Hello"); // type error
```

However, in Ruby we don't have this restriction.

```ruby
arr = []
arr << 0
arr << 1
arr << "Hello"
```

This is fundamentally less restrictive than Java. But you may have
a counter-point! What about using `ArrayList<Object>`?

```java
ArrayList<Object> arr = new ArrayList<>();
arr.add(0);
arr.add(1);
arr.add("Hello"); // no type error
```

Since we can add elements of arbitrary type, isn't this a counterexample
showing that Java is just as flexible as Ruby? 

<!--- CUE: Give a minute or so, but don't ask for answers. It's
      quite tricky. -->

The answer is no. Why? Because a list is only useful if you can
do something with its elements. If we fix the type parameter of
our list with Object we have basically no information about the
elements. Therefore, even though we know that the first two
elements in the list are numbers we couldn't even add them.

```java
arr.get(0) + arr.get(1);
|  Error:
|  bad operand types for binary operator '+'
|    first type:  java.lang.Object
|    second type: java.lang.Object
|  arr.get(0) + arr.get(1);
|  ^---------------------^
```

So our Java list is basically useless because we can't do
anything with the contents. However, in Ruby this will work fine
and gives 1.

```ruby
arr[0] + arr[1]
```

This is another example where a well-defined program is thrown
out by the type checker. We see that Java is more conservative
than Ruby because it rejects some perfectly fine programs. This
gets us into a crucial distinction in type systems.

1. A type system is **complete** if well-defined progams are
   always well-typed (i.e. the type checker doesn't throw out
   "good" programs).
2. A type system is **sound** if well-typed programs are always
   well-defined (i.e. a program that type checks can never go
   wrong at run-time).

Since Ruby will never throw out a good program it is complete
but not sound. Java is definitely not complete (we just saw
several examples), but it's more sound than Ruby since it does
eliminate many classes of runtime error.

We see that the tendency towards one side, soundness in Java
and completeness in Ruby, gives us very different kinds of
languages that "feel" very different.

<!--- TIME: 5 minutes -->

## So what?

Ruby's completeness is problematic because it can make finding
bugs quite difficult and not always easily reproducible. You
don't get a static type checker to verify that what you write is
reasonable.

This means it is incumbent on us, the programmers, to ensure that
what we write makes sense from a type perspective. This means that
testing is more important than ever. Good style conventions can
also help. For example, annotating every method with its type
and purpose.

```ruby
# add : Integer Integer -> Integer
# Adds two integers together
def add(x, y)
  x + y
end
```

## Linked list

<!--- TIME: 20 minutes -->
<!--- CUE: Have them complete linked_list.rb faithfully (without
      using Ruby arrays). -->

<!--- TIME: 5 minutes -->
<!--- CUE: Go over the solution. -->

```ruby
class Node
    attr_accessor :val, :next_node

    # Node : Object Node -> Node
    # Constructs a node
    def initialize(val, next_node)
        @val = val
        @next_node = next_node
    end
end

class LinkedList

    # LinkedList : Object -> LinkedList
    # Constructs a singleton linked list
    def initialize(elem)
        @head = Node.new(elem, nil)
    end
    
    # add : Object ->
    # Adds an element to the linked list
    def add(elem)
        cur = @head
        cur = cur.next_node while cur.next_node
        cur.next_node = Node.new(elem, nil)
    end

    # to_s : -> String
    # Returns a string representation of the linked list
    def to_s
        arr = []
        cur = @head
        while cur
            arr << cur.val
            cur = cur.next_node
        end
        arr.inspect
    end

end
```

<!--- TIME: 20 minutes -->
<!--- CUE: Have them work on the graded discussion. -->
