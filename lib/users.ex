defmodule BalalaikaBear.Users do
  alias BalalaikaBear.Request

  def get(params) do
    method = "users.get"

    Request.request_with_params(:get, method, params)
  end
end
