defmodule BalalaikaBear.Auth do

  alias BalalaikaBear.Config
  alias BalalaikaBear.Request
  @base_auth_url "https://oauth.vk.com/"

  def auth_url(params) do
    url_params =
      params
      |> Map.merge(default_auth_params, fn(_k, v1, _v2) -> v1 end)
      |> Enum.reduce("authorize?", fn({key, value}, accum) -> accum <> "#{key}=#{value}&" end)

    @base_auth_url <> url_params
  end

  def access_token(code) do
    url = code |> access_token_url
    Request.request(:get, url)
  end

  defp access_token_url(code) do
    url_params =
      %{
        code: code,
        client_secret: Config.api_key
      }
      |> Map.merge(default_auth_params)
      |> Enum.reduce([], fn({key, value}, accum) -> ["#{key}=#{value}" | accum] end)
      |> Enum.join("&")

    @base_auth_url <> "access_token?" <> url_params
  end

  defp default_auth_params do
    %{
      client_id: Config.app_id,
      redirect_url: Config.code_redirect_uri
    }
  end
end
