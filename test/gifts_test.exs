defmodule BalalaikaBear.GiftsTest do
  use ExUnit.Case
  use ExVCR.Mock, adapter: ExVCR.Adapter.Hackney

  test "gets gifts" do
    use_cassette "gifts_get" do
      params = 
        %{ 
          access_token: "e215ad8bb75b336f84212421d5e93e95eb8bd513bef513d98dfd17f06835f66705b4788e8d7038205f864"
        }

      {:ok, _result} = BalalaikaBear.Gifts.get(params)
    end
  end
end
