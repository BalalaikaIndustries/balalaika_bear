defmodule BalalaikaBear.WidgetsTest do
  use ExUnit.Case
  use ExVCR.Mock, adapter: ExVCR.Adapter.Hackney

  test "gets widget comments" do
    use_cassette "widgets_get_comments" do
      params = %{count: 5, offset: 0, order: "date"}

      {:error, _result} = BalalaikaBear.Widgets.get_comments(params)
    end
  end
end
