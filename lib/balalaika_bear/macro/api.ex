defmodule BalalaikaBear.Macro.API do
  alias BalalaikaBear.Request.HTTPClient

  defmacro __using__(options) do
    method_names = for method_name <- options[:methods], do: {method_name, format_name(method_name)}
    namespace = options[:namespace]

    quote bind_quoted: [method_names: method_names, namespace: namespace] do
      method_names
      |> Enum.each(
        fn({method_name, formatted_name}) ->
          def unquote(formatted_name)(params) do 
            HTTPClient.request_with_params("#{unquote(namespace)}.#{unquote(method_name)}", params)
          end
        end)
    end
  end

  defp format_name(name) do
    name
    |> Macro.underscore
    |> String.to_atom
  end
end
