defmodule BalalaikaBear.Status do
  use BalalaikaBear.Macro.API, namespace: "status",
                               methods: ["get", "set"]
end
