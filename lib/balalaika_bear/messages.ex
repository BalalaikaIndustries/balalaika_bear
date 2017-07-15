defmodule BalalaikaBear.Messages do
  use BalalaikaBear.Macro.API, namespace: "messages"
  alias BalalaikaBear.Request.HTTPClient
  alias BalalaikaBear.Request.Params

  def get_long_poll_history(server, key, ts, options \\ %{}) do
    params = %{key: key, ts: ts, act: "a_check"} |> Map.merge(options)
    url = "https://#{server}?" <> Params.url_params(params)

    HTTPClient.request(:get, url)
  end
end
