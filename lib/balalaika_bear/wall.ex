defmodule BalalaikaBear.Wall do
  use BalalaikaBear.API, namespace: "wall",
                         methods: ["createComment", "delete", "deleteComment", "edit", "editComment",
                                   "get", "getById", "getComments", "getReposts", "pin", "post",
                                   "reportComment", "reportPost", "repost", "restore", "restoreComment",
                                   "search", "unpin"]
end
