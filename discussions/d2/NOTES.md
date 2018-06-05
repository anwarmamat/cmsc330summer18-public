# Notes 2: There Will Be Cake
Date: Tuesday June 5th

<!--- ADMIN: Work on P1, should have made very good progress. Due on
      Friday. Should be almost done by next discussion. -->

<!--- TIME: 10 minutes -->

## Why regular expressions?

Hopefully it's clear by now that regular expressions are extremely
useful. They're commonplace in a wide range of applications.

<!--- CUE: Have students talk about what kinds of concrete applications
      they can think of. Ask for answers. -->

Here are several:

* Websites typically have some constraints on passwords. Maybe they
  have to be a certain length and have some certain characters.
* Along the same lines, we may want to validate some other user
  input. For example, that an entered email address or phone number
  is actually valid.
* If we're searching for something on our computer, sometimes regular
  exact string search is not enough. Unix search tools like `grep`
  allow for matching by regular expression.
* Given some textual input, we may want to extract part of it out.
  Regular expressions are often used for this purpose.

Right, so they're useful but why are we talking about them in this
course? One of the goals of 330 is to learn how languages are
implemented. There will be a project doing exactly this, implementing
a programming language called SmallC in OCaml.

Recall that we spoke about three notions: well-formed, well-defined,
well-typed. Well-formed meant that the program was syntactically
correct. In turns out that regular expressions will be a critically
important tool in verifying that input is well-formed.

## A phone number exercise

A valid phone number can be in one two formats, `(XXX) XXX-XXXX`
or `XXX-XXX-XXXX`.

<!--- TIME: 10 minutes -->
<!--- CUE: Have students try the quick exercise in phone.rb -->

<!--- TIME: 10 minutes -->
<!--- CUE: Go over the solution. -->

```ruby
PAREN_FMT = /\(\d{3}\) \d{3}-\d{4}/
DASH_FMT = /\d{3}-\d{3}-\d{4}/
PHONE = /^#{PAREN_FMT}|#{DASH_FMT}$/

# phone? : String -> Boolean
# Determines if a phone number is valid
def phone?(number)
    not (number =~ PHONE).nil?
end
```

Two important points:

1. Very often students will write very long and complicated
   regular expressions. This makes your code unmaintainable
   and hard to debug. Break up your regular expressions into
   natural chunks and give them good names. Then combine
   them together using regular expression interpolation
   (similar to string interpolation).
2. We could have simply written `number =~ PHONE`, however
   this would violate the type annotation we gave `phone?`
   since `=~` gives us an integer upon a successful match
   and nil otherwise. To get an actual boolean we need to
   do some more work (namely using `nil?`).

<!--- TIME: 50 minutes -->
<!--- CUE: Have students work on the graded exercise. -->
