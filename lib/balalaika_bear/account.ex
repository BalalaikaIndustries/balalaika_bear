defmodule BalalaikaBear.Account do
  use BalalaikaBear.Macro.API, namespace: "account",
                               methods: ["banUser", "changePassword", "getActiveOffers", 
                                         "getAppPermissions", "getBanned", "getCounters", "getInfo",
                                         "getProfileInfo", "getPushSettings", "lookupContacts", "registerDevice",
                                         "saveProfileInfo", "setInfo", "setNameInMenu", "setOffline", "setOnline",
                                         "setPushSettings", "setSilenceMode", "unbanUser", "unregisterDevice"]
  @moduledoc false
end
