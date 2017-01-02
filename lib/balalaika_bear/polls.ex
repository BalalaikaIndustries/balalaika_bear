defmodule BalalaikaBear.Polls do
  use BalalaikaBear.API, namespace: "polls",
                         methods: ["addVote", "create", "deleteVote",
                                   "edit", "getById", "getVoters"]
end
