defmodule BalalaikaBear.FaveTest do
  use ExUnit.Case
  use ExVCR.Mock, adapter: ExVCR.Adapter.Hackney

  test "gets user's fave users" do
    use_cassette "fave_get_users" do
      params = 
        %{ 
          access_token: "2603c67c4033fdb86b56522062a694049bd63f143451fd74fe007630209de5642c85c5838f244f35056c9"
        }

      {:ok, _result} = BalalaikaBear.Fave.get_users(params)
    end
  end
end
