defmodule BalalaikaBear.Secure do
  use BalalaikaBear.Macro.API, namespace: "secure",
                               methods: ["addAppEvent", "checkToken", "getAppBalance", 
                                         "getSMSHistory", "getTransactionsHistory", "getUserLevel", 
                                         "sendNotification", "sendSMSNotification", "setCounter", "setUserLevel"]
  @moduledoc false
end
