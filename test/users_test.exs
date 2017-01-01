defmodule BalalaikaBear.UsersTest do
  use ExUnit.Case
  use ExVCR.Mock, adapter: ExVCR.Adapter.Hackney

  test "retrieves user info" do
    use_cassette "users_get" do
      params = 
        %{ 
          user_ids: [13886710],
          fields: ["photo_max", "sex"], 
          name_case: "ins"
        }

      {:ok, result} = BalalaikaBear.Users.get(params)
      user = List.first result
      %{
        "first_name" => "Айратом", 
        "hidden" => 1,
        "last_name" => "Бадыковым",
        "photo_max" => "https://pp.vk.me/c837131/v837131710/1240d/roPlCfnhZf4.jpg",
        "sex" => 2, 
        "uid" => 13886710
      } = user
    end
  end

  test "gets nearby users" do
    use_cassette "users_get_nearby" do
      params =
        %{
          access_token: "27c4a2e59524fc677d41418bd59c046e6591ed8c2633ede8a0a6c04fbf792d6ba8468146a48b0a599bdfb",
          latitude: 30.313497,
          longitude: 59.938531
        }

      {:ok, result} = BalalaikaBear.Users.get_nearby(params)
      [_count | users] = result
      users |> Enum.each(
                          fn(user_info) ->
                            %{
                              "first_name" => _,
                              "last_name" => _,
                              "uid" => _
                            } = user_info
                          end
                        )
    end
  end
end
