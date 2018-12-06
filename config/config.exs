# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# config :ecto_job, EctoJob.Test.Repo,
#   database: "ecto_job_test",
#   username: "postgres",
#   password: "postgres",
#   hostname: "localhost"

# if Mix.env() == :test do
config :ecto_job, EctoJob.Test.Repo,
  adapter: Ecto.Adapters.Postgres,
  username: "postgres",
  password: "postgres",
  database: "ecto_job_test",
  hostname: "localhost",
  migration_timestamps: [type: :naive_datetime_usec],
  pool: Ecto.Adapters.SQL.Sandbox,
  priv: "test/support/"

config :ecto_job, ecto_repos: [EctoJob.Test.Repo]

config :logger, level: :warn
# end

config :ecto_job, ecto_repos: [EctoJob.Test.Repo]
