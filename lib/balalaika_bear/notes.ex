defmodule BalalaikaBear.Notes do
  use BalalaikaBear.Macro.API, namespace: "notes",
                               methods: ["add", "createComment", "delete", "deleteComment", "edit",
                                         "editComment", "get", "getById", "getComments", "restoreComment"]
  @moduledoc false
end
