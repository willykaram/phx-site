# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :phx_site,
  ecto_repos: [PhxSite.Repo]

# Configures the endpoint
config :phx_site, PhxSite.Web.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "WIYn6LOox9Yz++O3aS0kBgw5RqV4QAAfa4tAsSXfYefN5LIZxyl7avI6LuXoaOVX",
  render_errors: [view: PhxSite.Web.ErrorView, accepts: ~w(html json)],
  pubsub: [name: PhxSite.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
