defmodule BalalaikaBear.Docs do
  use BalalaikaBear.Macro.API, namespace: "docs",
                               methods: ["add", "delete", "edit", "get", "getById",
                                         "getTypes", "getUploadServer", "getWallUploadServer",
                                         "save", "search"]
end
