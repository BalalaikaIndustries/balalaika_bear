defmodule BalalaikaBear.UsersTest do
  use ExUnit.Case
  use ExVCR.Mock, adapter: ExVCR.Adapter.Hackney

  test "retrieves user info" do
    use_cassette "users_get" do
      users_ids = [13886710,13886715]
      {:ok, result} = BalalaikaBear.Users.get(users_ids)
      Enum.each(result,
                fn(user_info) ->
                  %{"first_name" => _, "last_name" => _} = user_info
                end)
    end
  end
end
