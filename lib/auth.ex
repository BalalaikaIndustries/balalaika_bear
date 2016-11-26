defmodule BalalaikaBear.Auth do

  alias BalalaikaBear.Config

  def auth_url(params) do
    base_url = "https://oauth.vk.com/authorize"
    url_params =
      params
      |> Map.merge(default_auth_params, fn(_k, v1, _v2) -> v1 end)
      |> Enum.reduce("?", fn({key, value}, accum) -> accum <> "#{key}=#{value}&"end)

    base_url <> url_params
  end

  defp default_auth_params do
    %{
      client_id: Config.app_id,
      redirect_url: Config.code_redirect_uri
    }
  end
end
