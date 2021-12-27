defmodule EmsTest.Repo do
  use Ecto.Repo,
    otp_app: :ems_test,
    adapter: Ecto.Adapters.Postgres
end
