defmodule BalalaikaBear.Stats do
  use BalalaikaBear.API, namespace: "stats",
                         methods: ["get", "getPostReach", "trackVisitor"]
end
