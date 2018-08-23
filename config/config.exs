# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :consignor_dash_map,
  ecto_repos: [ConsignorDashMap.Repo]

# Configures the endpoint
config :consignor_dash_map, ConsignorDashMapWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "Ema3MFUac6Fx+svPNOUM46SVRCWsMuAMllXSZ2wA50ZKQCl0bSUDlbVFgQBz+K4K",
  render_errors: [view: ConsignorDashMapWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: ConsignorDashMap.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:user_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
