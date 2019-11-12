defmodule Tally do
  @moduledoc """
  Tally provides a macro and protocol enabling the use of infix operators (e.g. `+`, `-` `*`, `/`)
  with complex types such as [Decimal](https://hexdocs.pm/decimal/). This makes writing calculations
  more natural.
  """

  defmacro __using__(_opts \\ []) do
    quote do
      import Tally
    end
  end

  defmacro calc(do: ast) do
    quote do
      unquote(ast)
    end
  end
end
