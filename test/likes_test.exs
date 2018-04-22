defmodule BalalaikaBear.LikesTest do
  use ExUnit.Case
  use ExVCR.Mock, adapter: ExVCR.Adapter.Hackney

  test "gets list if likers" do
    use_cassette "likes_get_list" do
      params = %{
        type: "photo",
        owner_id: 13_886_710,
        item_id: 456_239_025
      }

      {:ok, _result} = BalalaikaBear.Likes.get_list(params)
    end
  end
end
