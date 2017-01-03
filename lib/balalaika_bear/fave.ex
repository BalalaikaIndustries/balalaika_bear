defmodule BalalaikaBear.Fave do
  use BalalaikaBear.Macro.API, namespace: "fave",
                               methods: ["addGroup", "addLink", "addUser", "getLinks",
                                         "getMarketItems", "getPhotos", "getPosts",
                                         "getUsers", "getVideos", "removeGroup", "removeLink", 
                                         "removeUser"]
  @moduledoc false
end
