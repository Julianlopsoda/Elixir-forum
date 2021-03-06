# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :proyecto3,
  ecto_repos: [Proyecto3.Repo]

# Configures the endpoint
config :proyecto3, Proyecto3Web.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "0VZQsZcPjHlrxGVhNv0OAuE3b3ogk7uf+Q+Iod7h3p9ocRkiAccmPjLomwSM0WWM",
  render_errors: [view: Proyecto3Web.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Proyecto3.PubSub, adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
