defmodule BalalaikaBear.Pages do
  use BalalaikaBear.API, namespace: "pages", 
                         methods: ["clearCache", "get", "getHistory", "getTitles",
                                   "getVersion", "parseWiki", "save", "saveAccess"]
end
