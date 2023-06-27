defmodule FilterList do
  def call(list) do
    filter_list(list)
  end

  defp filter_list(list) do
    numbers =
      Enum.flat_map(list, fn elem ->
        case Integer.parse(elem) do
          {int, _rest} -> [int]
          :error -> []
        end
      end)

    result = Enum.filter(numbers, fn elem -> rem(elem, 2) > 0 end)
    result
  end
end
