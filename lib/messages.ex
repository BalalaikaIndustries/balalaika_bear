defmodule BalalaikaBear.Messages do
  alias BalalaikaBear.Request
  alias BalalaikaBear.Utils

  def get_long_poll_server(token, params \\ %{}) do
    params = token |> params_with_token(params)
    method = "messages.getLongPollServer"

    Request.request_with_params(:get, method, params)
  end

  def get_long_poll_history(server, ts, key, params \\ %{}) do
    timeout = Map.get(params, "wait", 25)
    default_params =
      %{
        act: "a_check",
        key: key,
        ts: ts,
        wait: timeout,
        mode: 2,
        version: 1
      }
    url = "https://#{server}" <> "?" <> Utils.url_params(default_params, params)

    Request.request(:get, url, %{}, [], [recv_timeout: (timeout + 1) * 1000])
  end

  defp params_with_token(token, params) do
    %{'access_token' => token}
    |> Map.merge(params)
  end
end
