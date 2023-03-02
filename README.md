# Stuff I'm Learning

<details>
<summary>Ruby</summary>

## Shovel Operator

This thingy is called a "shovel operator": `<<`.

It is used to append content to other content.  For example:

```ruby
quote = "I'll have the tuna."
quote << " No crust."
puts quote

I'll have the tuna. No crust.
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

quite interesting.

</details>
