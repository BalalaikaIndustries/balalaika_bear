defmodule BalalaikaBear.MessagesTest do
  use ExUnit.Case
  use ExVCR.Mock, adapter: ExVCR.Adapter.Hackney

  test "gets messages" do
    use_cassette "messages_get" do
      params = 
        %{ 
          access_token: "d5aa5092f0f9a4fb4456eccce180bb80a8f75af979064e817c54904f3c4c4a8362cf188398703d0e84ed2"        }

      {:ok, _result} = BalalaikaBear.Messages.get(params)
    end
  end

  test "gets long poll history" do
    use_cassette "messages_get_long_poll_history" do
      server = "imv4.vk.com/im6710"
      ts = 1840829772
      key = "028491ad2e8a95b44190b71ca5d6e6d9ed207ff4"
      {:ok, result} = BalalaikaBear.Messages.get_long_poll_history(server, key, ts)
      %{
        "updates" => _,
        "ts" => _
      } = result
    end
  end
end
