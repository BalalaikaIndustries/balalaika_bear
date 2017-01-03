defmodule BalalaikaBear.PollsTest do
  use ExUnit.Case
  use ExVCR.Mock, adapter: ExVCR.Adapter.Hackney

  test "gets poll info" do
    use_cassette "polls_get_by_id" do
      params = 
        %{ 
          access_token: "385d4955cb9b7de1b50684ee3b6b6d6b03b40a2f9c213b07751d5d184dce4fac7d3bb21224deb3fe7452c",
          owner_id: 2314852,
          poll_id: 81690974
        }

      {:ok, _result} = BalalaikaBear.Polls.get_by_id(params)
    end
  end
end
