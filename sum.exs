defmodule Sum do
  def list([]), do: 0
  def list([head | tail]), do: head + list(tail)

  def num(0), do: 0
  def num(n), do: n + num(n - 1)

  def gcd(x, 0), do: x
  def gcd(x, y), do: gcd(y, rem(x, y))
end
