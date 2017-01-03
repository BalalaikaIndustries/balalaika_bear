defmodule BalalaikaBear.Mixfile do
  use Mix.Project

  def project do
    [app: :balalaika_bear,
     version: "0.1.0",
     elixir: "~> 1.3",
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     deps: deps(),

      # Docs
     name: "BalalaikaBear",
     source_url: "https://github.com/ayrat555/balalaika_bear",
     docs: [logo: "/home/ayrat/Development/logo.png",
            extras: ["README.md"]]]
  end

  def application do
    [applications: [:logger, :httpoison]]
  end

  defp deps do
    [
      {:httpoison, "~> 0.10.0"},
      {:poison, "~> 3.0"},
      {:credo, "~> 0.5", only: [:dev, :test]},
      {:mock, "~> 0.2.0", only: :test},
      {:exvcr, "~> 0.7", only: :test},
      {:ex_doc, "~> 0.14", only: :dev}
    ]
  end
end
