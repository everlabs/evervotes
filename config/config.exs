# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :evervotes_api,
  ecto_repos: [EvervotesApi.Repo]

# Configures the endpoint
config :evervotes_api, EvervotesApi.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "GYEZqtG96du98Egey3zp8eNnAnD4gvtq+6eB3WWOFlqXTk01QeJMiipQind2QPU3",
  render_errors: [view: EvervotesApi.ErrorView, accepts: ~w(html json)],
  pubsub: [name: EvervotesApi.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
