defmodule BalalaikaBear.Request do
  def request(type, url, headers \\ %{}, body \\ []) do
    {:ok, %HTTPoison.Response{
      status_code: code,
      body: body,
      headers: headers}} =
    HTTPoison.request(type, url, body, headers)

    %{status_code: code, body: body, headers: headers}
  end
end
