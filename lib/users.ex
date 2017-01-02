defmodule BalalaikaBear.Users do
  use API, methods: ["users.get", "users.getNearby", "users.getSubscriptions", 
                     "users.isAppUser", "users.report", "users.search", "users.getFollowers"]
end
