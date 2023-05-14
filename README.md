# Stuff I'm Learning

<details>
<summary>HTML & CSS</summary>

## Border-Sizing Attribute

Setting `box-sizing: border-box;` is an easy way to make CSS sizing computations easier.  By default, setting a width/height value on an object doesn't factor stuff like padding or border values.  So for example, if you define something like this:

```
.box-one {
  padding: 10px;
  height : 100px;
  width  : 100px;
  border : 30px solid red;
  margin : 100px;
}
```

The height in this case is 180 instead of 100.  That's because we have the height, PLUS padding on top and bottom (10 + 10 = 20), PLUS border on top and bottom (30 + 30 = 60).  Alternatively:

```
.box-one {
  padding: 10px;
  height : 100px;
  width  : 100px;
  border : 30px solid red;
  margin : 100px;
  box-sizing: border-box;
}
```

Adding the `box-sizing` attribute ensures width & height computation takes into account the other stuff.  You can set this property on all elements to ensure width/height specifications are exactly what you intend:

```
html {
  box-sizing: border-box;
}

*,
*::before,
*::after {
  box-sizing: inherit;
}
```

</details>

<details>
<summary>JavaScript</summary>

# Set & Map

## Sets

Sets are like Arrays, but values may only occur once in a set.  You can also iterate through a Set in insertion order (the order in which each element was inserted into the set).

```javascript
const mySet1 = new Set();

mySet1.add(1);
mySet1.add(5);
mySet1.add(5); // 5 already exists, so nothing happens here
```

## Maps

Maps are like hashes (they hold key-value pairs), but they remember the original insertion order of the keys.

```javascript
const myMap1 = new Map();

myMap1.set('a', 1);
myMap1.set('b', 2);
myMap1.set('c', 3);

console.log(map1.get('a')); // 1
```

</details>

<details>
<summary>Ruby</summary>

## Shovel Operator

This thingy is called a "shovel operator": `<<`.

It is used to append one thing to another.  For example:

```ruby
quote = "I'll have the tuna."
quote << " No crust."

puts quote
  => I'll have the tuna. No crust.
```

This is similar to the `+=` syntax, with a few important differences:
1. `<<` is more memory efficient since it modifies the existing variable rather than reassigning it (less garbage collection needed)
1. `<<` mutates ALL instances of the variable, for example:

Modifying content with `+=`:
```ruby
quote = "You don't turn your back on family, "
line = quote
line += "even when they do."

puts line
  => You don't turn your back on family, even when they do.

puts quote
  => You don't turn your back on family, 
```

Modifying content with `<<`:
```ruby
quote = "You don't turn your back on family, "
line = quote
line << "even when they do."

puts line
  => You don't turn your back on family, even when they do.

puts quote
  => You don't turn your back on family, even when they do.
```

Notice the `puts` outputs are the same in the second example, even though we performed the `<<` action on `line` and not `quote`. quite interesting.

## Ranges
Ranges can be inclusive of the last value or not, depending on the operator you use.  For example:

```ruby
(1..5).to_a
  => [1, 2, 3, 4, 5]

(1...5).to_a
  => [1, 2, 3, 4]
```

Notice the triple dot expression does not include the final number of the range.  Whereas the double-dot expression DOES include the final number in the range.

## .map() and .collect()

These two methods apply a transformation to items in an array.  For example:

```ruby
array = [1, 2, 3]
new_array = array.map { |item| item + 5 }
  => [6, 7, 8]
```

I've seen `.map()` used more commonly than `.collect()`.

## Spaceship Operator

This is the spaceship operator: `<=>`

It's useful to control flow for comparisons that could be more than simply "true" or "false":

- `-1` if the value on the left is less than the value on the right
- `0` if the value on the left is equal to the value on the right
- `1` if the value on the left is greater than the value on the right

Example:

```ruby
5  <=> 10 #=> -1
10 <=> 10 #=>  0
10 <=>  5 #=>  1
```

## Coercing Truthiness / Falsiness to Booleans

Given that ruby expressions implicitly return a value, testing for booleans can be tricky.  See the following example:

```ruby
  foo = nil
  bar = 'qux'
  isOk = foo || bar

  #=> 'qux'
```

The result is "truthy" in that `bar` has a string value (neither a `nil` or `false` value).  If you were expecting a `true` or `false` value from this code you'd be disappointed.  You can coerce a "truthy" or "falsy" return into true booleans like so:

```ruby
  foo = nil
  bar = 'qux'
  isOk = !!(foo || bar)

  #=> true
```

Where the `!!` operator is doing the heavy lifting.  `!!a` is the equivalent of `!(!a)`, in which the inner `!` converts the value of a to false if it is "truthy", or `true` if a is falsy.  This gets us a boolean value (albeit the opposite of what we wanted).  Then the outer `!` flips the `true` or `false` value, returning the expected boolean value.

## Stacking .with_index()

You can stack `.with_index()` like so:

```
arr = ('a'..'h')

arr.each_with_object({}).with_index do | (item, hash), index |
  hash[item] = index
end

  => {"a"=>0, "b"=>1, "c"=>2, "d"=>3, "e"=>4, "f"=>5, "g"=>6, "h"=>7}
```

## Classes

### Instance Variables

Signified by an `@` symbol before the variable name, instance variables are used to keep track of an object's _state_.
These variables exist for the lifetime of the object instance and is a simple way to tie data to objects.

## Synonyms
`raise` and `fail` are synonyms.  
`.collect()` and `.map()` are synonyms.  
`.select()` and `.find_all()` are synonyms.  

</details>

<details>
<summary>How to Learn</summary>

## Embracing Challenge
Reframe your thinking from:
- "I can't do this" or
- "I don't understand this"

to:
- "I can't do this ... _yet_"
- "I don't understand this ... _yet_"

This can help diffuse a natural instinct to run away from the challenge, cheat the challenge, or search for a simpler challenge for instant gratification.

## Working Through Discomfort
NOPS for dealing with discomfort during learning:
- Notice it.
- Own it.
- Push into it.
- Stay with it.

Allows your anxities to level off and give you the headspace to drag your comfort zone further.  For example if you don't understand recursion, try writing the simplest recursion method you can.

## How to Start Learning
Start with very small, specific goals that are doable.

## Learning by Reading
1. Consider reading the book away from the computer and absorb as much as possible.
1. Come up with questions or thoughts on different ways of approaching a topic.

</details>
