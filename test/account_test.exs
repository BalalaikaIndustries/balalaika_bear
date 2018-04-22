defmodule BalalaikaBear.AccountTest do
  use ExUnit.Case
  use ExVCR.Mock, adapter: ExVCR.Adapter.Hackney

  test "sets user offline" do
    use_cassette "account_set_offline" do
      params = %{
        access_token:
          "cc4aa135cbe00f65182dc4921d2dd2de33521b7670198481030238bd19cb6ab757385d041048de7f0a91c"
      }

      {:ok, 1} = BalalaikaBear.Account.set_offline(params)
    end
  end
end
