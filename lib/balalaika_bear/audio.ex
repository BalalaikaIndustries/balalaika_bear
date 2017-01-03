defmodule BalalaikaBear.Audio do
  use BalalaikaBear.Macro.API, namespace: "audio",
                               methods: ["add", "addAlbum", "delete", "deleteAlbum", "edit", 
                                         "editAlbum", "get", "getAlbums", "getBroadcastList",
                                         "getById", "getCount", "getLyrics", "getPopular", 
                                         "getRecommendations", "getUploadServer", "moveToAlbum",
                                         "reorder", "reorder", "save", "search", "setBroadcast"]
end
