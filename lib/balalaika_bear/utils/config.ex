defmodule BalalaikaBear.Utils.Config do
  def api_key do
    env_var!(:api_key)
  end

  def app_id do
    env_var!(:app_id)
  end

  def code_redirect_uri do
    env_var!(:code_redirect_uri)
  end

  defp env_var!(var) do
    Application.fetch_env!(:balalaika_bear, var)
  end
end
