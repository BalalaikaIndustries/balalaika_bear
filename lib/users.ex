defmodule BalalaikaBear.Users do
  use API, namespace: "users",
           methods: ["get", "getNearby", "getSubscriptions", 
                     "isAppUser", "report", "search", "getFollowers"]
end
