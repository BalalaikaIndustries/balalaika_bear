defmodule BalalaikaBear.AuthTest do
  use ExUnit.Case
  use ExVCR.Mock, adapter: ExVCR.Adapter.Hackney
  import Mock
  alias BalalaikaBear.Auth

  test "generates correct auth url" do
    with_mock BalalaikaBear.Config,
    [
      app_id: fn -> "555" end,
      code_redirect_uri: fn -> "http://example.com/callback" end
    ] do
      generated_url = Auth.auth_url(params)

      assert generated_url == correct_url
    end
  end

  test "does not fetch access_token if invalid code is provided" do
    use_cassette "access_token_request_with_invalid_token" do
      code = "invalid_code"
      {:error, description} = Auth.access_token(code)
      %{
        "error" => "invalid_grant",
        "error_description" => "Code is invalid or expired."
      } = description
    end
  end

  test "fetches access_token if valid code is provided" do
    use_cassette "access_token_request_with_valid_token" do
      code = "f0eb1cf0c85d6ff5ae"
      {
        :ok,
        %{
          "access_token" => _,
          "expires_in" => _,
          "user_id" => _
        }
      } = Auth.access_token(code)
    end
  end

  defp params do
    %{
      "display" => "page",
      "v" => "5.60",
      "scope" => "friends",
      "response" => "code"
    }
  end

  defp correct_url do
    "https://oauth.vk.com/authorize?v=5.60&" <>
    "scope=friends&response=code&display=page&" <>
    "redirect_uri=http://example.com/callback&client_id=555"
  end
end
