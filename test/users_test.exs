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

  test "gets user's followers" do
    use_cassette "users_get_followers" do
      params =
        %{
          user_id: 13886710,
          offset: 5
        }

      {:ok, result} = BalalaikaBear.Users.get_followers(params)
      %{
        "count" => _,
        "items" => _
      } = result
    end
  end

  test "gets user's subscriptions" do
    use_cassette "users_get_subscriptions" do
      params = %{ user_id: 13886710 }

      {:ok, result} = BalalaikaBear.Users.get_subscriptions(params)
      %{
        "groups" => %{
          "count" => _,
          "items" => _,
        },
        "users"=> %{
          "count" => _,
          "items" => _,
        }
      } = result
    end
  end

  test "checks if user installed app" do
    use_cassette "users_is_app_user" do
      params =
        %{
          user_id: 13886710,
          access_token: "27c4a2e59524fc677d41418bd59c046e6591ed8c2633ede8a0a6c04fbf792d6ba8468146a48b0a599bdfb"
        }

      {:ok, "1"} = BalalaikaBear.Users.is_app_user(params)
    end
  end

  test "reports user" do
    use_cassette "users_report" do
      params =
        %{
          user_id: 13886715,
          access_token: "2cf34377fc5fac1beb5baa9a3346faf15653f99431164730b16a7797b184ade9925bca7c935457203b153",
          type: "porn"
        }

      {:ok, "0"} = BalalaikaBear.Users.is_app_user(params)
    end
  end

  test "searches for users" do
    use_cassette "users_search" do
      params =
        %{
          access_token: "31a1853977980cff82e354d1d6b642dbebe4402fe07ec2eaa0fd0ac8f3fe1156965364a3bc927b8400533",
          q: "Ayrat Badykov"
        }

      {:ok, result} = BalalaikaBear.Users.search(params)
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
