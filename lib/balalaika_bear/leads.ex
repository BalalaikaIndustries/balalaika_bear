defmodule BalalaikaBear.Leads do
  use BalalaikaBear.API, namespace: "leads",
                         methods: ["checkUser", "complete", "getStats", "getUsers",
                                   "metricHit", "start"]
end
