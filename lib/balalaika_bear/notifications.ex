defmodule BalalaikaBear.Notifications do
  use BalalaikaBear.Macro.API, namespace: "notifications",
                               methods: ["get", "markAsViewed"]
  @moduledoc false
end
