defmodule BalalaikaBear.Mixfile do
  use Mix.Project

  def project do
    [app: :balalaika_bear,
     version: "0.1.1",
     elixir: "~> 1.3",
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     deps: deps(),

      # Docs
     package: package(),
     description: "VK API wrapper for Elixir",
     name: "BalalaikaBear",
     source_url: "https://github.com/ayrat555/balalaika_bear",
     docs: [logo: "logo.png",
            extras: ["README.md"]]]
  end

  def application do
    [applications: [:logger, :httpoison]]
  end

  def package do
   [
     maintainers: ["Ayrat Badykov"],
     licenses: ["MIT"],
     links: %{"GitHub" => "https://github.com/ayrat555/balalaika_bear"}
   ]
  end

  defp deps do
    [
      {:httpoison, "~> 0.11.0"},
      {:poison, "~> 3.0"},
      {:credo, "~> 0.5", only: [:dev, :test]},
      {:mock, "~> 0.2.0", only: :test},
      {:exvcr, "~> 0.7", only: :test},
      {:ex_doc, "~> 0.14", only: :dev}
    ]
  end
end
