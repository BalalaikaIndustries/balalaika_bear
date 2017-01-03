defmodule BalalaikaBear.PlacesTest do
  use ExUnit.Case
  use ExVCR.Mock, adapter: ExVCR.Adapter.Hackney

  test "gets checkins" do
    use_cassette "places_get_checkins" do
      params = 
        %{ 
          access_token: "40853ffcf747a94c186344d51c72097855f8d39cb0ce5f31827f48e7261274640856c3547b2f4c7c5b933",
          latitude: 59,
          longitude: 30
        }

      {:ok, _result} = BalalaikaBear.Places.get_checkins(params)
    end
  end
end
