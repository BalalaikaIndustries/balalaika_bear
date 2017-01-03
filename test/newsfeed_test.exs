defmodule BalalaikaBear.NewsfeedTest do
  use ExUnit.Case
  use ExVCR.Mock, adapter: ExVCR.Adapter.Hackney

  test "gets mentions" do
    use_cassette "newsfeed_get_mentions" do
      params = 
        %{ 
          access_token: "385d4955cb9b7de1b50684ee3b6b6d6b03b40a2f9c213b07751d5d184dce4fac7d3bb21224deb3fe7452c",
        }

      {:ok, _result} = BalalaikaBear.Newsfeed.get_mentions(params)
    end
  end
end
