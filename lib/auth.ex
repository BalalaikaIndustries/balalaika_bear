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
    Request.request(:get, url)
  end
end
