#### One space after `{` and before `}`

```ruby
# bad
{"one" => 1, "two" => 2}

# good
{ "one" => 1, "two" => 2 }
```


#### One space before and after `=>`

```ruby
# bad
{ "one"=>1, "two"=>2 }

# good
{ "one" => 1, "two" => 2 }
```


#### Avoid using a comma after the last item of a literal

```ruby
# bad
{ "one" => 1, "two" => 2, }

# good
{ "one" => 1, "two" => 2 }
```



#### Align `=>` for multi-line Hash literals

```ruby
# bad
{
  "one" => 1,
  "two" => 2,
  "three" => 3
}

# good
{
  "one"   => 1,
  "two"   => 2,
  "three" => 3
}
```


#### No spaces before `[`

```ruby
# bad
some_hash ["key"]

# good
some_hash["key"]
```


#### No spaces after `[` or before `]`

```ruby
# bad
some_hash[ "key" ]

# good
some_hash["key"]
```


#### Use `fetch` when keys must be present

```ruby
some_hash = { "one" => 1, "two" => 2 }

# bad
some_hash["one"]   #=> 1
some_hash["twwo"]  #=> nil

# good
some_hash.fetch("one")   #=> 1
some_hash.fetch("twwo")  #=> KeyError: key not found: "twwo"
```


#### Prefer `size` over `length` and `count`

```ruby
# bad
some_hash.length
some_hash.count

# good
some_hash.size
```


#### Name the parameters `k` and `v` for single-line blocks

```ruby
# bad
some_hash.each { |key, value| puts key + value }

# good
some_hash.each { |k, v| puts k + v }
```


#### Use `_` for unused block parameters

```ruby
# bad
some_hash.each { |k, v| puts v }

# good
some_hash.each { |_, v| puts v }
```


#### Rely on the insertion order

```ruby
# bad
{ "February" => 28, "January" => 31 }.each { |k, v| puts k + v }

# good
{ "January" => 31, "February" => 28 }.each { |k, v| puts k + v }
```


#### Never modify while traversing it

```ruby
some_hash = { "one" => 1, "two" => 2 }

# bad
some_hash.each { |key, value| some_hash[key] = value + 1 }

# good
temp = {}
some_hash.each { |key, value| temp[key] = value + 1 }
```
