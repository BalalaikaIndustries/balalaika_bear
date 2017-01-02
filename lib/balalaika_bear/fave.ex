defmodule BalalaikaBear.Fave do
  use BalalaikaBear.API, namespace: "fave",
                         methods: ["addGroup", "addLink", "addUser", "getLinks",
                                   "getMarketItems", "getPhotos", "getPosts",
                                   "getUsers", "getVideos", "removeGroup", "removeLink", 
                                   "removeUser"]
end
