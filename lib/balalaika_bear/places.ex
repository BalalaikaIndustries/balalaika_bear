defmodule BalalaikaBear.Places do
  use BalalaikaBear.API, namespace: "places",
                         methods: ["add", "checkin", "getById", 
                                   "getCheckins", "getTypes", "search"]
end
