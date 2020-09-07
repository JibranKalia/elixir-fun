defmodule Chop do
  def guess(actual, range = a..b) do
    guess = div(a + b, 2)
    IO.puts "Is it #{guess}"
    is_it(actual, guess, range)
  end

  def is_it(actual, actual, _), do: IO.puts actual
  def is_it(actual, guess, _a..b) when guess < actual, do: guess(actual, guess+1..b)
  def is_it(actual, guess, a.._b) when guess > actual, do: guess(actual, a..guess-1)
end