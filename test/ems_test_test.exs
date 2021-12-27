defmodule EmsTestTest do
  use ExUnit.Case
  doctest EmsTest

  test "greets the world" do
    assert EmsTest.hello() == :world
  end
end
