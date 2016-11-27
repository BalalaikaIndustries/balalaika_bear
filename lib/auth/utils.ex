defmodule BalalaikaBear.Auth.Utils do
  alias BalalaikaBear.Config
  @base_auth_url "https://oauth.vk.com/"

  def request_url(path, params) do
    url_params =
      params
      |> Map.merge(default_auth_params)
      |> Enum.reduce([], fn({key, value}, accum) -> ["#{key}=#{value}" | accum] end)
      |> Enum.join("&")

    @base_auth_url <> "#{path}?" <> url_params
  end

  def default_auth_params do
    %{
      client_id: Config.app_id,
      redirect_uri: Config.code_redirect_uri
    }
  end
end
