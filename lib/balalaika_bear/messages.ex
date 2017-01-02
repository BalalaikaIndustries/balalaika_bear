defmodule BalalaikaBear.Messages do
  use BalalaikaBear.Macro.API, namespace: "messages", 
                               methods: ["addChatUser", "allowMessagesFromGroup", "createChat", "delete",
                                         "deleteChatPhoto", "deleteDialog", "denyMessagesFromGroup", "editChat",
                                         "get", "getById", "getChat", "getChatUsers", "getDialogs", "getHistory",
                                         "getHistoryAttachments", "getLastActivity", "getLongPollHistory", 
                                         "getLongPollServer", "isMessagesFromGroupAllowed", "markAsAnsweredDialog", 
                                         "markAsImportant", "markAsImportantDialog", "markAsRead", "removeChatUser", 
                                         "restore", "search", "searchDialogs", "send", "setActivity", "setChatPhoto"]
end
