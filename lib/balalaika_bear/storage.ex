defmodule BalalaikaBear.Storage do
  use BalalaikaBear.API, namespace: "storage",
                         methods: ["get", "set", "getKeys"]
end
