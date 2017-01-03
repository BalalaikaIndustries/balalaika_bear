defmodule BalalaikaBear.SearchTest do
  use ExUnit.Case
  use ExVCR.Mock, adapter: ExVCR.Adapter.Hackney

  test "gets search hints" do
    use_cassette "search_get_hints" do
      params = 
        %{ 
          access_token: "013510ed53e3d56fafcb70d9899e3d817fc5eae0adf6de4be015e72a7c9a5516e34a5cd50d8c8f2db1cad",
          q: "VK API"
        }

      {:ok, _result} = BalalaikaBear.Search.get_hints(params)
    end
  end
end
