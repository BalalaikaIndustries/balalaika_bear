defmodule BalalaikaBear.StatusTest do
  use ExUnit.Case
  use ExVCR.Mock, adapter: ExVCR.Adapter.Hackney

  test "gets user status" do
    use_cassette "status_get" do
      params = 
        %{ 
          access_token: "ad8b1c744f0a052eb59b5fe96d08bc1f285b52fda07715bc695885ab82a430c83527d5d60756a355a654d",
        }

      {:ok, _result} = BalalaikaBear.Status.get(params)
    end
  end
end
