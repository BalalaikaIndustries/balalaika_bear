defmodule BalalaikaBear.Market do
  use BalalaikaBear.Macro.API, namespace: "market",
                               methods: ["add", "addAlbum", "addToAlbum", "createComment", "delete",
                                         "deleteAlbum", "deleteComment", "edit", "editAlbum", "editComment",
                                         "get", "getAlbumById", "getAlbums", "getById", "getCategories",
                                         "getComments", "removeFromAlbum", "reorderAlbums", "reorderItems",
                                         "report", "reportComment", "restore", "restoreComment", "search"]
  @moduledoc false
end
