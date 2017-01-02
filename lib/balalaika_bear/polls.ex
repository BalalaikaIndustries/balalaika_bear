defmodule BalalaikaBear.Polls do
  use BalalaikaBear.Macro.API, namespace: "polls",
                               methods: ["addVote", "create", "deleteVote",
                                         "edit", "getById", "getVoters"]
end
