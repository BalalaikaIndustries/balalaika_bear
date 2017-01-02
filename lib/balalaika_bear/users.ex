defmodule BalalaikaBear.Users do
  use BalalaikaBear.API, namespace: "users",
                         methods: ["get", "getNearby", "getSubscriptions", 
                                   "isAppUser", "report", "search", "getFollowers"]
end
