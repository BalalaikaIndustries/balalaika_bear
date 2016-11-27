defmodule BalalaikaBear.Auth do
  alias BalalaikaBear.Config
  alias BalalaikaBear.Request
  import BalalaikaBear.Auth.Utils

  def auth_url(params) do
    request_url("authorize", params)
  end

  def access_token(code) do
    params  = %{
      code: code,
      client_secret: Config.api_key
    }
    url = request_url("access_token", params)

    case Request.request(:get, url) do
      %{status_code: 200, body: body} -> {:ok, Poison.decode! body}
      %{status_code: code, body: body} -> {:error, {code, Poison.decode! body}}
    end
  end
end
