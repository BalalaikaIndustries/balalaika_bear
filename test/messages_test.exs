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
end
