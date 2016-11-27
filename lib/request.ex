defmodule BalalaikaBear.Request do
  @base_url "https://api.vk.com/method/"
  alias BalalaikaBear.Config

  def request(type, url, headers \\ %{}, body \\ []) do
    {:ok, %HTTPoison.Response{
      status_code: code,
      body: body,
      headers: headers}} =
    HTTPoison.request(type, url, body, headers)

    %{status_code: code, body: body, headers: headers}
  end

  def request_with_params(type, method, params, headers \\ %{}, body \\ []) do
    url = request_url(method, params)
    request(type, url, headers, body)
  end

  defp request_url(method, params) do
    url_params =
      %{
        "access_token" => Config.api_key
      }
      |> Map.merge(params)
      |> Enum.reduce([], fn({key, value}, accum) -> ["#{key}=#{value}" | accum] end)
      |> Enum.join("&")

    @base_url <> "#{method}?" <> url_params
  end
end
