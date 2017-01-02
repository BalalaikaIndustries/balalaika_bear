defmodule BalalaikaBear.Utils.OAuth do
  alias BalalaikaBear.Utils.Config
  alias BalalaikaBear.Request.HTTPClient
  alias BalalaikaBear.Request.Params
  @base_auth_url "https://oauth.vk.com/"

  def auth_url(params) do
    auth_request_url("authorize", params)
  end

  def access_token(code) do
    params  = %{
      code: code,
      client_secret: Config.api_key
    }
    url = auth_request_url("access_token", params)

    HTTPClient.request(:get, url)
  end

  defp auth_request_url(path, params) do
    @base_auth_url <> "#{path}?" <> Params.url_params(default_auth_params, params)
  end

  defp default_auth_params do
    %{
      client_id: Config.app_id,
      redirect_uri: Config.code_redirect_uri
    }
  end
end
