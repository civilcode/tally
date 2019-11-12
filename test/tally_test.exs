defmodule TallyTest do
  use ExUnit.Case
  doctest Tally

  use Tally

  test "multiplication" do
    calc do
      actual = 2 * 3
    end

    assert actual == 6
  end

  test "addition" do
    calc do
      actual = 1 + 2
    end

    assert actual == 3
  end
end
