defmodule BalalaikaBear.Orders do
  use BalalaikaBear.Macro.API, namespace: "orders",
                               methods: ["changeState", "get", "getAmount", "getById"]
end
