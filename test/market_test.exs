defmodule BalalaikaBear.MarketTest do
  use ExUnit.Case
  use ExVCR.Mock, adapter: ExVCR.Adapter.Hackney

  test "gets market items" do
    use_cassette "market_get" do
      params = %{
        access_token:
          "246e193823bb4da1965a2548010f0199d77b62db6442e22a7a36cc22707deeda56e9e2eaaee5980fa8d8a",
        owner_id: -124_527_492
      }

      {:ok, _result} = BalalaikaBear.Market.get(params)
    end
  end
end
