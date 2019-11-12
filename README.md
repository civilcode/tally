# Tally

Tally provides a macro and protocol enabling the use of infix operators (e.g. `+`, `-` `*`, `/`)
with complex types such as [Decimal](https://hexdocs.pm/decimal/). This makes writing calculations
more natural. For example, without Tally:

```elixir
a = Decimal.new(1)
b = Decimal.new(2)

c =  Decimal.add(a, b)
```

With Tally:

```elixir
use Tally

a = Decimal.new(1)
b = Decimal.new(2)

calc do
  c = a + b
end
```
