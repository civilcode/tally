defmodule TallyTest do
  use ExUnit.Case
  doctest Tally

  use Tally

  describe "addition" do
    test "with a simple type" do
      calc do
        actual = 1 + 2
      end

      assert actual == 3
    end

    test "with a complex type" do
      calc do
        a = Decimal.new(1)
        b = Decimal.new(2)

        actual = a + b
      end

      expected = Decimal.new(3)
      assert Decimal.equal?(actual, expected)
    end
  end
end
