{:ok, _} = Application.ensure_all_started(:hound)
{:ok, _} = Application.ensure_all_started(:ex_machina)

ExUnit.start()

Ecto.Adapters.SQL.Sandbox.mode(Tergeo.Repo, :manual)

ExUnit.configure(exclude: [acceptance: true])