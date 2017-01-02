defmodule BalalaikaBear.Friends do
  use BalalaikaBear.API, namespace: "friends",
                         methods: ["add", "addList", "areFriends", "delete", "deleteAllRequests",
                                   "deleteList", "edit", "editList", "get", "getAppUsers", "getAvailableForCall",
                                   "getByPhones", "getLists", "getMutual", "getOnline", "getRecent", "getRequests",
                                   "getSuggestions", "search"]
end
