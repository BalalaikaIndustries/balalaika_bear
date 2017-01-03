defmodule BalalaikaBear.NotesTest do
  use ExUnit.Case
  use ExVCR.Mock, adapter: ExVCR.Adapter.Hackney

  test "gets notes" do
    use_cassette "notes_get" do
      params = 
        %{ 
          access_token: "e577afea74619aead172c8e58688c2e498c2c20bcc429b710554baeb90febe21b1262aa7d169b2e1e38b0",
        }

      {:ok, _result} = BalalaikaBear.Notes.get(params)
    end
  end
end
