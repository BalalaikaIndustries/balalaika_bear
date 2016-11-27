defmodule BalalaikaBear.AuthTest do
  use ExUnit.Case, async: true

  import Mock

  test "generates correct auth url" do
    with_mock BalalaikaBear.Config,
    [
      app_id: fn -> "555" end,
      code_redirect_uri: fn -> "http://example.com/callback" end
    ] do
      generated_url = BalalaikaBear.Auth.auth_url(params)

      assert generated_url == correct_url
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
