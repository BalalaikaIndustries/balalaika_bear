defmodule BalalaikaBear.Video do
  use BalalaikaBear.API, namespace: "video",
                         methods: ["add", "addAlbum", "addToAlbum", "createComment", "delete", "deleteAlbum",
                                   "deleteComment", "edit", "editAlbum", "editComment", "get", "getAlbumById",
                                   "getAlbums", "getAlbumsByVideo", "getCatalog", "getCatalogSection", "getComments",
                                   "getNewTags", "getTags", "getUserVideos", "hideCatalogSection", "putTag",
                                   "removeFromAlbum", "removeTag", "reorderAlbums", "reorderVideos", "report",
                                   "reportComment", "restore", "restoreComment", "save", "search"]
end
