defmodule BalalaikaBear.AudioTest do
  use ExUnit.Case
  use ExVCR.Mock, adapter: ExVCR.Adapter.Hackney

  test "gets user's audios" do
    use_cassette "audio_get" do
      params = 
        %{ 
          access_token: "ce90fcec95db1c3490072b6eece53b2c3c021c4af7f2f92e3eded1c04b13a29dd9564f81ce8c64f5ffe2d"
        }

      {:ok, result} = BalalaikaBear.Audio.get(params)
      [%{"aid" => 1, "artist" => "Аудио доступно на vk.com",
         "duration" => 25, "owner_id" => 100,
         "title" => "и в официальных приложениях ВКонтакте",
         "url" => "https://vk.com/mp3/audio_api_unavailable.mp3"}] =  result
    end
  end
end
