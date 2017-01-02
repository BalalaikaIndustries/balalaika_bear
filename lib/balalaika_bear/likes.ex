defmodule BalalaikaBear.Likes do
  use BalalaikaBear.Macro.API, namespace: "likes",
                               methods: ["add", "delete", "getList", "isLiked"]
end
