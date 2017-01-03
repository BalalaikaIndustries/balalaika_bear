defmodule BalalaikaBear.PagesTest do
  use ExUnit.Case
  use ExVCR.Mock, adapter: ExVCR.Adapter.Hackney

  test "gets pages info" do
    use_cassette "pages_get" do
      params = 
        %{ 
          access_token: "40853ffcf747a94c186344d51c72097855f8d39cb0ce5f31827f48e7261274640856c3547b2f4c7c5b933",
          owner_id: -93460162,
          page_id: 50083226
        }

      {:ok, _result} = BalalaikaBear.Pages.get(params)
    end
  end
end
