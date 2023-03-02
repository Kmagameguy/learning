# Stuff I'm Learning

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
</details>
