config :ecto_job, EctoJob.Test.Repo,
  adapter: Ecto.Adapters.Postgres,
  username: "postgres",
  password: "postgres",
  database: "ecto_job_test",
  hostname: "localhost",
  pool: Ecto.Adapters.SQL.Sandbox,
  priv: "test/support/"

config :ecto_job, ecto_repos: [EctoJob.Test.Repo]

config :logger, level: :warn
