defmodule BalalaikaBear.WallTest do
  use ExUnit.Case
  use ExVCR.Mock, adapter: ExVCR.Adapter.Hackney

  test "gets wall posts" do
    use_cassette "wall_get" do
      params = %{owner_id: -86529522}

      {:ok, _result} = BalalaikaBear.Wall.get(params)
    end
  end
end
