defmodule BalalaikaBear.Notes do
  use BalalaikaBear.API, namespace: "notes",
                         methods: ["add", "createComment", "delete", "deleteComment", "edit",
                                   "editComment", "get", "getById", "getComments", "restoreComment"]
end
