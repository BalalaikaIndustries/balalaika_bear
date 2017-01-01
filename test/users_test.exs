defmodule BalalaikaBear.UsersTest do
  use ExUnit.Case
  use ExVCR.Mock, adapter: ExVCR.Adapter.Hackney

  test "retrieves user info" do
    use_cassette "users_get" do
      user_ids = [13886710]
      fields = ["photo_max", "sex"]
      name_case = "ins"
      params = %{user_ids: user_ids, fields: fields, name_case: name_case}

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
end
