use Mix.Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :falcon_fans, FalconFansWeb.Endpoint,
  http: [port: 4001],
  server: false

# Print only warnings and errors during test
config :logger, level: :warn

# Configure your database
config :falcon_fans, FalconFans.Repo,
  adapter: Ecto.Adapters.Postgres,
  username: "postgres",
  password: "postgres",
  database: "falcon_fans_test",
  hostname: "localhost",
  pool: Ecto.Adapters.SQL.Sandbox
