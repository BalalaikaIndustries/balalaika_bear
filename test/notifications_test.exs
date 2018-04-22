defmodule BalalaikaBear.NotificationsTest do
  use ExUnit.Case
  use ExVCR.Mock, adapter: ExVCR.Adapter.Hackney

  test "gets notifications" do
    use_cassette "notifications_get" do
      params = %{
        access_token:
          "9e6448e8e878a1af08b8197b5a5886c6d3b7ad1a35d7f7efc182a030e73026be955c6281fd2f92977f680"
      }

      {:ok, _result} = BalalaikaBear.Notifications.get(params)
    end
  end
end
