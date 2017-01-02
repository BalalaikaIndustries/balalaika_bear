defmodule BalalaikaBear.Apps do
  use BalalaikaBear.API, namespace: "apps",
                         methods: ["deleteAppRequests", "get", "getCatalog", "getFriendsList", 
                                   "getFriendsList", "getScore", "sendRequest"]
end