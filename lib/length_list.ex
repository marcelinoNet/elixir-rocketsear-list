defmodule ListLength do

  def call(list), do: length(list)

  defp length([], acc), do: acc


  defp length([head | tail], acc) do

    acc = acc + 1
    length(tail, acc)

  end

end
