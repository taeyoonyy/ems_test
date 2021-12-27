defmodule EmsTest.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  @impl true
  def start(_type, _args) do
    port = start_web_server()
    children = [
      {Plug.Cowboy, scheme: :http, plug: EmsTest.Router, port: port}
      # Starts a worker by calling: EmsTest.Worker.start_link(arg)
      # {EmsTest.Worker, arg}
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: EmsTest.Supervisor]
    Supervisor.start_link(children, opts)
  end

  defp start_web_server() do
    Application.get_env(:plug_ex, :cowboy_port, 1234)
  end
end
