defmodule BalalaikaBear.PhotosTest do
  use ExUnit.Case
  use ExVCR.Mock, adapter: ExVCR.Adapter.Hackney

  test "gets photos" do
    use_cassette "photos_get" do
      params = %{
        owner_id: 13_886_710,
        album_id: "wall"
      }

      {:ok, _result} = BalalaikaBear.Photos.get(params)
    end
  end
end
