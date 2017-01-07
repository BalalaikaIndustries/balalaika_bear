defmodule BalalaikaBear.Messages do
  use BalalaikaBear.Macro.API, namespace: "messages", 
                               methods: ["addChatUser", "allowMessagesFromGroup", "createChat", "delete",
                                         "deleteChatPhoto", "deleteDialog", "denyMessagesFromGroup", "editChat",
                                         "get", "getById", "getChat", "getChatUsers", "getDialogs", "getHistory",
                                         "getHistoryAttachments", "getLastActivity", 
                                         "getLongPollServer", "isMessagesFromGroupAllowed", "markAsAnsweredDialog", 
                                         "markAsImportant", "markAsImportantDialog", "markAsRead", "removeChatUser", 
                                         "restore", "search", "searchDialogs", "send", "setActivity", "setChatPhoto"]
  alias BalalaikaBear.Request.HTTPClient
  alias BalalaikaBear.Request.Params

  def get_long_poll_history(server, key, ts, options \\ %{}) do
    params = %{key: key, ts: ts, act: "a_check"} |> Map.merge(options)
    url = "https://#{server}?" <> Params.url_params(params)

    HTTPClient.request(:get, url)
  end 
end
