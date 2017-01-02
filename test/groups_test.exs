defmodule BalalaikaBear.GroupsTest do
  use ExUnit.Case
  use ExVCR.Mock, adapter: ExVCR.Adapter.Hackney

  test "gets user's groups" do
    use_cassette "groups_get" do
      params = 
        %{ 
          access_token: "e215ad8bb75b336f84212421d5e93e95eb8bd513bef513d98dfd17f06835f66705b4788e8d7038205f864"
        }

      {:ok, _result} = BalalaikaBear.Groups.get(params)
    end
  end
end
