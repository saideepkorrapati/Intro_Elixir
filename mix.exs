defmodule Myproject.MixProject do
  use Mix.Project

  def project do
    [
      app: :myproject,
      version: "0.1.0",
      elixir: "~> 1.7",
      start_permanent: Mix.env() == :prod,
      escript: escript()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger]
    ]
  end

  defp escript do
    [
      main_module: Myproject
    ]
    end

  # Run "mix help deps" to learn about dependencies.
  end