defmodule PhxSite.Web.Router do
  use PhxSite.Web, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", PhxSite.Web do
    pipe_through :browser # Use the default browser stack

    get "/", PageController, :index
    get "/community", PageController, :community

    resources "/posts", PostController
    resources "/tags", TagController

  end

  # Other scopes may use custom stacks.
  # scope "/api", PhxSite.Web do
  #   pipe_through :api
  # end
end
