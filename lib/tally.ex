defmodule Tally do
  @moduledoc """
  Tally provides a macro and protocol enabling the use of infix operators (e.g. `+`, `-` `*`, `/`)
  with complex types such as [Decimal](https://hexdocs.pm/decimal/). This makes writing calculations
  more natural.
  """

  defmodule Arithmetic do
    import Kernel, except: [+: 2]

    def left + right do
      do_add(left, right)
    end

    defp do_add(%Decimal{} = left, %Decimal{} = right) do
      Decimal.add(left, right)
    end

    defp do_add(left, right) do
      Kernel.+(left, right)
    end
  end

  defmacro __using__(_opts \\ []) do
    quote do
      import Tally
    end
  end

  defmacro calc(do: ast) do
    quote do
      import Kernel, except: [+: 2]
      import Arithmetic

      unquote(ast)
    end
  end
end
