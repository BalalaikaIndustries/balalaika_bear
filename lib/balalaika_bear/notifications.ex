defmodule BalalaikaBear.Notifications do
  use BalalaikaBear.API, namespace: "notifications",
                         methods: ["get", "markAsViewed"]
end
