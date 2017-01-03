defmodule BalalaikaBear.Stats do
  use BalalaikaBear.Macro.API, namespace: "stats",
                               methods: ["get", "getPostReach", "trackVisitor"]
  @moduledoc false
end
