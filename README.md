# Tally

Tally provides a macro and protocol enabling the use of infix operators (e.g. `+`, `-` `*`, `/`)
with complex types such as [Decimal](https://hexdocs.pm/decimal/). This makes writing calculations
more natural.

## Example

Without Tally:

```elixir
a = Decimal.new(1)
b = Decimal.new(2)

c =  Decimal.add(a, b)
```

With Tally:

```elixir
use Tally

calc do
  a = Decimal.new(1)
  b = Decimal.new(2)

  c = a + b
end
```

## Protocols

Tally uses a protocol, `Tally.Protocol` to dynamically dispatch arithmetic operations. `Tally`
provides a default fallback implementation that retains the existing behaviour of Elixir. An
implementation for `Decimal` is also provided and is only compiled if you include the `decimal`
package in your `mix` file as a dependency.
