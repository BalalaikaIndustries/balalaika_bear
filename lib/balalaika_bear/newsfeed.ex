defmodule BalalaikaBear.Newsfeed do
  use BalalaikaBear.API, namespace: "newsfeed", 
                         methods: ["addBan", "deleteBan", "deleteList", "get", "getBanned",
                                   "getComments", "getLists", "getMentions", "getRecommended",
                                   "getSuggestedSources", "ignoreItem", "saveList", "search",
                                   "unignoreItem", "unsubscribe"]
end
