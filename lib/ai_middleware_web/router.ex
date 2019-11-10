defmodule AiMiddlewareWeb.Router do
  use AiMiddlewareWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", AiMiddlewareWeb do
    pipe_through :api
  end
end
