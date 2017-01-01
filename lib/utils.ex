defmodule BalalaikaBear.Utils do
  def url_params(default_params, params) do
    params
    |> Map.merge(default_params)
    |> Enum.reduce([], fn({key, value}, accum) -> ["#{key}=#{join_array_params(value)}" | accum] end)
    |> Enum.join("&")
  end

  defp join_array_params(values) when is_list(values) do
    values |> Enum.join(",")
  end

  defp join_array_params(value) do
    value
  end
end
