@doc "Problem description: https://www.hackerrank.com/challenges/fp-solve-me-first/problem"
defmodule Solution do

    def sum() do
        a = IO.read(:line)
          |>String.replace("\n","")
          |>String.to_integer
        b = IO.read(:line)
          |>String.replace("\n","")
          |>String.to_integer
        IO.puts a + b
    end

end

Solution.sum()
