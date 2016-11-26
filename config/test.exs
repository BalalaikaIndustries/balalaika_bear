use Mix.Config

config :balalaika_bear,
  app_id: System.get_env("VK_APP_ID"),
  api_key: System.get_env("VK_API_KEY")
