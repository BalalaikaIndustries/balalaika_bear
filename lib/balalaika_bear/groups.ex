defmodule BalalaikaBear.Groups do
  use BalalaikaBear.Macro.API, namespace: "groups",
                               methods: ["addLink", "approveRequest", "banUser", "create", "deleteLink",
                                         "edit", "editLink", "editManager", "editPlace", "get", "getBanned",
                                         "getById", "getCallbackConfirmationCode", "getCallbackServerSettings",
                                         "getCallbackSettings", "getCatalog", "getCatalogInfo", "getInvitedUsers",
                                         "getInvites", "getMembers", "getRequests", "getSettings", "invite",
                                         "isMember", "join", "leave", "removeUser", "reorderLink", "search",
                                         "setCallbackServer", "setCallbackServerSettings", "setCallbackSettings", "unbanUser"]
end
