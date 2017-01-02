defmodule BalalaikaBear.Likes do
  use BalalaikaBear.API, namespace: "likes",
                         methods: ["add", "delete", "getList", "isLiked"]
end
