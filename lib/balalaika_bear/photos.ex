defmodule BalalaikaBear.Photos do
  use BalalaikaBear.Macro.API, namespace: "photos",
                               methods: ["confirmTag", "copy", "createAlbum", "createComment", "delete",
                                         "deleteAlbum", "deleteComment", "edit", "editAlbum", "editComment",
                                         "get", "getAlbums", "getAlbumsCount", "getAll", "getAllComments",
                                         "getById", "getChatUploadServer", "getChatUploadServer", "getMarketAlbumUploadServer",
                                         "getMarketUploadServer", "getMessagesUploadServer", "getNewTags", "getOwnerPhotoUploadServer",
                                         "getTags", "getUploadServer", "getUserPhotos", "getWallUploadServer", "makeCover", "move",
                                         "putTag", "removeTag", "reorderAlbums", "reorderPhotos", "report", "reportComment", "restore",
                                         "restoreComment", "save", "saveMarketAlbumPhoto", "saveMarketPhoto", "saveMessagesPhoto",
                                         "saveOwnerPhoto", "saveWallPhoto", "search"]
end
