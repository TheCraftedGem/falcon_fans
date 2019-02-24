# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :falcon_fans,
  ecto_repos: [FalconFans.Repo]

# Configures the endpoint
config :falcon_fans, FalconFansWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "pITrh0kX4KTH9N953KZFOzHbzEzMGy3gfb6vMkMxQ30zpiFy0dQC8+Me8Hj0A5Dh",
  render_errors: [view: FalconFansWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: FalconFans.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:user_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
