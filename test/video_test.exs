defmodule BalalaikaBear.VideoTest do
  use ExUnit.Case
  use ExVCR.Mock, adapter: ExVCR.Adapter.Hackney

  test "gets user's videos" do
    use_cassette "video_get" do
      params = %{
        access_token:
          "50a2d047f568adc3645f8983eab904ab5d33eb856c5c566291fa5a06a01445d7f29d321d521827aac3b88"
      }

      {:ok, _result} = BalalaikaBear.Video.get(params)
    end
  end
end
