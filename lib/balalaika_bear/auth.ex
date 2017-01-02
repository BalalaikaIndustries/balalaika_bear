defmodule BalalaikaBear.Auth do
  use BalalaikaBear.API, namespace: "auth", 
                         methods: ["checkPhone", "confirm", "restore", "signup"]
end
