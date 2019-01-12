defmodule ConnArtist.MixProject do
  use Mix.Project

  def project do
    [
      app: :conn_artist,
      name: "ConnArtist",
      version: "0.0.2",
      elixir: "~> 1.7",
      start_permanent: Mix.env() == :prod,
      build_embedded: Mix.env() == :prod,
      deps: deps(),
      description: description(),
      package: package(),
      source_url: "https://github.com/functionhaus/conn_artist",
      homepage_url: "https://functionhaus.com",

      docs: [
        main: "ConnArtist", # The main page in the docs
        logo: "assets/functionhaus_logo.png",
        extras: ["README.md"]
      ]
    ]
  end

  def application do
    [
      extra_applications: [:logger]
    ]
  end

  defp deps do
    [
     {:plug, "~> 1.7"},
     {:jason, "~> 1.1"}
    ]
  end

  defp description do
    """
    Tools for managing Plug connections.
    """
  end

  defp package do
    [
     files: ["lib", "mix.exs", "README.md"],
     maintainers: ["FunctionHaus LLC, Mike Zazaian"],
     licenses: ["MIT License"],

     links: %{"GitHub" => "https://github.com/functionhaus/conn_artist",
              "Docs" => "https://hexdocs.pm/conn_artist/"}
     ]
  end
end
