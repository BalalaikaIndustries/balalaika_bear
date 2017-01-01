defmodule BalalaikaBear.Users do
  alias BalalaikaBear.Request

  def get(params) do
    method = "users.get"

    Request.request_with_params(:get, method, params)
  end

  def get_nearby(params) do
    method = "users.getNearby"

    Request.request_with_params(:get, method, params)
  end

  def get_followers(params) do
    method = "users.getFollowers"

    Request.request_with_params(:get, method, params)
  end

  def get_subscriptions(params) do
    method = "users.getSubscriptions"

    Request.request_with_params(:get, method, params)
  end

  def is_app_user(params) do
    method = "users.isAppUser"

    Request.request_with_params(:get, method, params)
  end

  def report(params) do
    method = "users.report"

    Request.request_with_params(:get, method, params)
  end

  def search(params) do
    method = "users.search"

    Request.request_with_params(:get, method, params)
  end
end
