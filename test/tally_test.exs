defmodule TallyTest do
  use ExUnit.Case
  doctest Tally

  use Tally

  test "addition" do
    calc do
      actual = 1 + 2
    end

    assert actual == 3
  end
end
