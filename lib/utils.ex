defmodule BalalaikaBear.Utils do
  def url_params(default_params, params) do
    params
    |> Map.merge(default_params)
    |> Enum.reduce([], fn({key, value}, accum) -> ["#{key}=#{value}" | accum] end)
    |> Enum.join("&")
  end
end
