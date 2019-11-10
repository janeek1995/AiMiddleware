use Mix.Config

# Configure your database
config :ai_middleware, AiMiddleware.Repo,
  username: "postgres",
  password: "postgres",
  database: "ai_middleware_test",
  hostname: "localhost",
  pool: Ecto.Adapters.SQL.Sandbox

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :ai_middleware, AiMiddlewareWeb.Endpoint,
  http: [port: 4002],
  server: false

# Print only warnings and errors during test
config :logger, level: :warn
