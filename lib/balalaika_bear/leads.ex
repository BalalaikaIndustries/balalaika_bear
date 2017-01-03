defmodule BalalaikaBear.Leads do
  use BalalaikaBear.Macro.API, namespace: "leads",
                               methods: ["checkUser", "complete", "getStats", "getUsers",
                                         "metricHit", "start"]
  @moduledoc false
end
