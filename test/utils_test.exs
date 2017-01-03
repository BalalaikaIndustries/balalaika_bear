defmodule BalalaikaBear.UtilsTest do
  use ExUnit.Case
  use ExVCR.Mock, adapter: ExVCR.Adapter.Hackney

  test "gets server time" do
    use_cassette "utils_get_server_time" do
      {:ok, _result} = BalalaikaBear.Utils.get_server_time(%{})
    end
  end
end
