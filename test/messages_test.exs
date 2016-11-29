defmodule BalalaikaBear.MessagesTest do
  use ExUnit.Case
  use ExVCR.Mock, adapter: ExVCR.Adapter.Hackney

  test "sends successfull get_long_poll_server request" do
    use_cassette "successful_get_long_poll_server" do
      token = "90f5483c654a53812f7430c69398b4b14b95dc6b716d86e01278e0fc36af08471ef9e5bfb2c1f01caf1b5"
      {:ok, result} = BalalaikaBear.Messages.get_long_poll_server(token)
      %{
        "key" => _,
        "server" => _,
        "ts" => _
      } = result
    end
  end

  test "sends get_long_poll_server request with wrong token" do
    use_cassette "unsuccessful_get_long_poll_server" do
      token = "invalid_token"
      {:error, description} = BalalaikaBear.Messages.get_long_poll_server(token)
      %{
        "error_code" => _,
        "error_msg" => _,
        "request_params" => _
      } = description
    end
  end
end
