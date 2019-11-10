defmodule AiMiddleware.Repo do
  use Ecto.Repo,
    otp_app: :ai_middleware,
    adapter: Ecto.Adapters.Postgres
end
