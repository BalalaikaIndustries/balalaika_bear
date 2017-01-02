defmodule BalalaikaBear.Secure do
  use BalalaikaBear.API, namespace: "secure",
                         methods: ["addAppEvent", "checkToken", "getAppBalance", 
                                   "getSMSHistory", "getTransactionsHistory", "getUserLevel", 
                                   "sendNotification", "sendSMSNotification", "setCounter", "setUserLevel"]
end
