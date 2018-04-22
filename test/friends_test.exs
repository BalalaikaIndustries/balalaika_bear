defmodule BalalaikaBear.FriendsTest do
  use ExUnit.Case
  use ExVCR.Mock, adapter: ExVCR.Adapter.Hackney

  test "gets user's friends" do
    use_cassette "friends_get" do
      params = %{user_id: 13_886_710}

      {:ok, _result} = BalalaikaBear.Friends.get(params)
    end
  end
end
