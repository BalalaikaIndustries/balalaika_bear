defmodule BalalaikaBear.Orders do
  use BalalaikaBear.API, namespace: "orders",
                         methods: ["changeState", "get", "getAmount", "getById"]
end
