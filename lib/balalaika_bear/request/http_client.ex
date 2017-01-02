defmodule BalalaikaBear.Request.HTTPClient do
  alias BalalaikaBear.Request.Params
  @base_url "https://api.vk.com/method/"

  def request_with_params(method, params, headers \\ %{}, body \\ []) do
    url = request_url(method, params)
    request(:get, url, headers, body)
  end

  def request(type, url, headers \\ %{}, body \\ [], options \\ []) do
    {:ok, %HTTPoison.Response{
      status_code: code,
      body: body,
      headers: headers}} =
    HTTPoison.request(type, url, body, headers, options)

    %{status_code: code, body: body, headers: headers} |> response
  end

  defp request_url(method, params) do
    @base_url <> "#{method}?" <> Params.url_params(%{}, params)
  end

  defp response(%{status_code: code, body: body, headers: _}) do
    case code do
      200 -> parse_result(body)
        _ -> {:error, Poison.decode! body}
    end
  end

  defp parse_result(body) do
    body = Poison.decode! body
    case body do
      %{"response" => response_map} ->
        {:ok, response_map}
      %{"error" => error_map} ->
        {:error, error_map}
      _ -> {:ok, body}
    end
  end
end
