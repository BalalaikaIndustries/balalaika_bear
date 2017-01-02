defmodule BalalaikaBear.BoardTest do
  use ExUnit.Case
  use ExVCR.Mock, adapter: ExVCR.Adapter.Hackney

  test "gets topics" do
    use_cassette "boards_get_topics" do
      params = %{group_id: 555}
      {:ok, _} = BalalaikaBear.Board.get_topics(params)
    end
  end
end
