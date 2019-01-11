defmodule ConnArtist.MixProject do
  use Mix.Project

  def project do
    [
      app: :conn_artist,
      version: "0.0.1",
      elixir: "~> 1.7",
      start_permanent: Mix.env() == :prod,
      build_embedded: Mix.env() == :prod,
      deps: deps(),
      description: description(),
      package: package()
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
     {:jason, "~> 1.1"},
     {:cowboy, "~> 2.6.0"},
     {:plug_cowboy, "~> 2.0.1"}
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
     links: %{"GitHub" => "https://github.com/zazaian/conn_artist",
              "Docs" => "https://hexdocs.pm/conn_artist/"}
     ]
  end
end