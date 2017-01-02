defmodule BalalaikaBear.Utils do
  def url_params(default_params, params) do
    params
    |> Map.merge(default_params)
    |> Enum.reduce([], fn({key, value}, accum) -> ["#{key}=#{encode_params(value)}" | accum] end)
    |> Enum.join("&")
  end

  defp encode_params(values) when is_list(values) do
    values 
    |> Enum.join(",") 
    |> String.replace(" ", "%20") 
  end

  defp encode_params(value) when is_binary(value) do
    value |> String.replace(" ", "%20")
  end

  defp encode_params(value) do
    value
  end
end
