defmodule BalalaikaBear.Docs do
  use BalalaikaBear.API, namespace: "docs",
                         methods: ["add", "delete", "edit", "get", "getById",
                                   "getTypes", "getUploadServer", "getWallUploadServer",
                                   "save", "search"]
end
