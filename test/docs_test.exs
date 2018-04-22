defmodule BalalaikaBear.DocsTest do
  use ExUnit.Case
  use ExVCR.Mock, adapter: ExVCR.Adapter.Hackney

  test "gets docs" do
    use_cassette "docs_get" do
      params = %{
        access_token:
          "e215ad8bb75b336f84212421d5e93e95eb8bd513bef513d98dfd17f06835f66705b4788e8d7038205f864"
      }

      {:ok, _result} = BalalaikaBear.Docs.get(params)
    end
  end
end
