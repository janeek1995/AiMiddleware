# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :ai_middleware,
  ecto_repos: [AiMiddleware.Repo]

# Configures the endpoint
config :ai_middleware, AiMiddlewareWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "SWSNqAo/DAwPp0Um7Rsqs3+WhMXiEcdW1oYe5kcMWAfPbjC6JPmErqdKcChR0Auu",
  render_errors: [view: AiMiddlewareWeb.ErrorView, accepts: ~w(json)],
  pubsub: [name: AiMiddleware.PubSub, adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
