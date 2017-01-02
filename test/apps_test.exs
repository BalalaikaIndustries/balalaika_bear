defmodule BalalaikaBear.AppsTest do
  use ExUnit.Case
  use ExVCR.Mock, adapter: ExVCR.Adapter.Hackney

  test "gets app catalog" do
    use_cassette "apps_get_catalog" do
      {:ok, _} = BalalaikaBear.Apps.get_catalog(%{})
    end
  end
end
