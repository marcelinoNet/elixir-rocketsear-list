defmodule FilterList do
  import Integer

  def call(list) do

    listOfNumericStrings = returnListOfNumericStrings(list)

    list_integer = convertToListOfInteger(listOfNumericStrings)

    list_of_odd_numbers = returnOddNumbers(list_integer)

    length(list_of_odd_numbers)

  end

  defp isNumber(str) do
    #returna true se o string é numerica e false para string não numerica
    case Integer.parse(str) do
      {_num, ""} -> true
      _ -> false
    end
  end

  defp returnListOfNumericStrings(list) do
    # retorna uma lista com as string numericas
     Enum.filter(list,
      fn x -> isNumber(x) == true
     end)
  end

  defp convertToListOfInteger(list) do
    # converte a lista de string numericas para lista de inteiros
    Enum.map(list, fn x -> String.to_integer(x) end)
  end

  defp returnOddNumbers(list) do
    # converte a lista de numerios impares
    Enum.filter(list, fn x -> Integer.is_odd(x) == true end )
  end

  # retorna o tamanho de uma lista
  defp length([], acc), do: acc
  defp length([head | tail], acc) do

    acc = acc + 1
    length(tail, acc)

  end


end
