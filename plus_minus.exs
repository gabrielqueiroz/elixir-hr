@doc "Problem description: https://www.hackerrank.com/challenges/plus-minus"
defmodule Solution do
  def plus_minus() do
    size = IO.read(:line)
      |>String.replace("\n","")
      |>String.to_integer

    numbers = IO.read(:line)
      |>String.split
      |>Enum.map(&String.to_integer/1)

    positive = get_positives(numbers)
    negative = get_negatives(numbers)
    zeros    = get_zeros(numbers)

    IO.puts get_result(positive, size)
    IO.puts get_result(negative, size)
    IO.puts get_result(zeros, size)
  end

  defp get_result(_, 0) do
    0
  end

  defp get_result(a, b) do
    a / b
  end

  defp get_positives([_|_] = numbers) do
    length(Enum.filter(numbers, fn x -> x > 0 end))
  end

  defp get_negatives([_|_] = numbers) do
    length(Enum.filter(numbers, fn x -> x < 0 end))
  end

  defp get_zeros([_|_] = numbers) do
    length(Enum.filter(numbers, &(&1 == 0)))
  end
end

Solution.plus_minus()
