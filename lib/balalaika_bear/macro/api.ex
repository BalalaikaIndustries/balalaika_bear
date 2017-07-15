defmodule BalalaikaBear.Macro.API do
  alias BalalaikaBear.Request.HTTPClient
  @moduledoc false
  @methods_path "./lib//balalaika_bear/macro/methods.json"

  defmacro __using__(options) do
    namespace = options[:namespace]
    method_names = namespace |> read_methods
    method_names = for method_name <- method_names,
      do: {method_name, format_name(method_name)}


    quote bind_quoted: [method_names: method_names, namespace: namespace] do
      method_names
      |> Enum.each(
      fn({method_name, formatted_name}) ->
        def unquote(formatted_name)(params) do
          method_name = "#{unquote(namespace)}.#{unquote(method_name)}"

          HTTPClient.request_with_params(method_name, params)
        end
      end)
    end
  end

  defp format_name(name) do
    name
    |> Macro.underscore
    |> String.to_atom
  end

  defp read_methods(namespace) do
    %{^namespace => methods} =
      @methods_path
      |> File.read!
      |> Poison.decode!

    methods
  end
end
