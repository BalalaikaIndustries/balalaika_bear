defmodule BalalaikaBear.Utils do
  use BalalaikaBear.API, namespace: "utils",
                         methods: ["checkLink", "getServerTime", "resolveScreenName"]
end
