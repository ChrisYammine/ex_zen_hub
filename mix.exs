defmodule ExZenHub.Mixfile do
  use Mix.Project

  def project do
    [app: :ex_zen_hub,
     version: "0.1.0",
     elixir: "~> 1.4",
     description: "Unofficial Elixir client for the ZenHub API",
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     test_coverage: [tool: ExCoveralls],
     preferred_cli_env: ["coveralls": :test, "coveralls.detail": :test, "coveralls.html": :test],
     deps: deps(),
     package: package()]
  end

  # Configuration for the OTP application
  #
  # Type "mix help compile.app" for more information
  def application do
    # Specify extra applications you'll use from Erlang/Elixir
    [extra_applications: [:logger]]
  end

  # Dependencies can be Hex packages:
  #
  #   {:my_dep, "~> 0.3.0"}
  #
  # Or git/path repositories:
  #
  #   {:my_dep, git: "https://github.com/elixir-lang/my_dep.git", tag: "0.1.0"}
  #
  # Type "mix help deps" for more examples and options
  defp deps do
    [
      {:poison, "~> 3.0"},
      {:httpoison, "~> 0.11.0"},
      {:ex_doc, ">= 0.0.0", only: :dev},
      {:dialyxir, ">= 0.0.0", only: :dev},
      {:exvcr, "~> 0.7", only: :test},
      {:excoveralls, "~> 0.5", only: :test}
    ]
  end

  defp package do
    [ maintainers: ["ChrisYammine"],
      licenses: ["MIT"],
      links: %{"GitHub" => "https://github.com/ChrisYammine/ex_zen_hub"} ]
  end
end