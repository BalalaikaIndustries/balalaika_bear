defmodule BalalaikaBear.Places do
  use BalalaikaBear.Macro.API, namespace: "places",
                               methods: ["add", "checkin", "getById", 
                                         "getCheckins", "getTypes", "search"]
end
