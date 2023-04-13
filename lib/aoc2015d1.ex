defmodule Aoc2015d1 do
  def run_p1() do
    read_input_data()
    |> String.graphemes()
    |> Enum.reduce(0, fn x, acc ->
      if x === "(" do
        acc + 1
      else
        acc - 1
      end
    end)
  end

  def run_p2() do
    read_input_data()
    |> String.graphemes()
    |> Enum.with_index
    |> Enum.reduce_while(0, fn({x, index}, acc) ->
      if acc === -1 do
        {:halt, index}
      else
        if x === "(" do
          {:cont, acc + 1}
        else
          {:cont, acc - 1}
        end
      end
    end)
  end

  defp read_input_data() do
    {:ok, data} = File.read("./input_data/day1.txt")
    data
  end
end
