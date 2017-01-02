defmodule BalalaikaBear.Status do
  use BalalaikaBear.API, namespace: "status",
                         methods: ["get", "set"]
end
