defmodule BalalaikaBear.DatabaseTest do
  use ExUnit.Case
  use ExVCR.Mock, adapter: ExVCR.Adapter.Hackney

  test "gets countries" do
    use_cassette "database_get_countries" do
      params = %{need_all: 1}
      {:ok, _} = BalalaikaBear.Database.get_countries(params)
    end
  end
end
