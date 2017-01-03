defmodule BalalaikaBear.Utils do
  use BalalaikaBear.Macro.API, namespace: "utils",
                               methods: ["checkLink", "getServerTime", "resolveScreenName"]
  @moduledoc false
end
