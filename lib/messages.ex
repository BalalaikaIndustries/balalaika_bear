defmodule BalalaikaBear.Messages do
  alias BalalaikaBear.Request

  def get(token, params) do
    method = "messages.get"
    Request.request_with_params(:get, method, params)
  end
end
