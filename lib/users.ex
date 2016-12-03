defmodule BalalaikaBear.Users do
  alias BalalaikaBear.Request

  def get(user_ids, params \\ %{}) do
    user_ids = user_ids |> join_user_ids
    params =
      %{
        user_ids: user_ids
      } |> Map.merge(params)
    method = "users.get"

    Request.request_with_params(:get, method, params)
  end

  def join_user_ids(user_ids) do
    user_ids
    |> Enum.map(fn(id) -> Integer.to_string(id) end)
    |> Enum.join(",")
  end
end
