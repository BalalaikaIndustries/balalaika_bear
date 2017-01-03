defmodule BalalaikaBear.StatsTest do
  use ExUnit.Case
  use ExVCR.Mock, adapter: ExVCR.Adapter.Hackney

  test "gets group statts" do
    use_cassette "stats_get" do
      params = 
        %{ 
          access_token: "40853ffcf747a94c186344d51c72097855f8d39cb0ce5f31827f48e7261274640856c3547b2f4c7c5b933",
          group_id: 1,
          date_from: "2013-08-08",
          date_to: "2013-09-08"
        }

      {:ok, _result} = BalalaikaBear.Stats.get(params)
    end
  end
end
