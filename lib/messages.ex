defmodule BalalaikaBear.Messages do
  alias BalalaikaBear.Request

  def get_long_poll_server(token, params \\ %{}) do
    params = token |> params_with_token(params)
    method = "messages.getLongPollServer"

    Request.request_with_params(:get, method, params)
  end

  defp params_with_token(token, params) do
    %{'access_token' => token}
    |> Map.merge(params)
  end
end
