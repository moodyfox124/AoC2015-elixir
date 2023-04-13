defmodule Mix.Tasks.Day1p1 do
  use Mix.Task

  def run(_) do
    Aoc2015d1.run_p1()
    |> IO.puts
  end
end

defmodule Mix.Tasks.Day1p2 do
  use Mix.Task

  def run(_) do
    Aoc2015d1.run_p2()
    |> IO.puts
  end
end
