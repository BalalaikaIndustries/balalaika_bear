defmodule BalalaikaBear.Storage do
  use BalalaikaBear.Macro.API, namespace: "storage",
                               methods: ["get", "set", "getKeys"]
end
