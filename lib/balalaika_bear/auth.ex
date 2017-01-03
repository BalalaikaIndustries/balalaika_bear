defmodule BalalaikaBear.Auth do
  use BalalaikaBear.Macro.API, namespace: "auth", 
                               methods: ["checkPhone", "confirm", "restore", "signup"]
end
