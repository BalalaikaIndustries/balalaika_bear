defmodule BalalaikaBear.Apps do
  use BalalaikaBear.Macro.API, namespace: "apps",
                               methods: ["deleteAppRequests", "get", "getCatalog", "getFriendsList", 
                                         "getFriendsList", "getScore", "sendRequest"]
  @moduledoc false
end 
