defmodule BalalaikaBear.Users do
  use BalalaikaBear.Macro.API, namespace: "users",
                               methods: ["get", "getNearby", "getSubscriptions", 
                                         "isAppUser", "report", "search", "getFollowers"]
  @moduledoc false
end
