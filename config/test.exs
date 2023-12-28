import Config

# Configure your database
#
# The MIX_TEST_PARTITION environment variable can be used
# to provide built-in test partitioning in CI environment.
# Run `mix help test` for more information.
config :elixir_graphql_todoapi, ElixirGraphqlTodoapi.Repo,
  database: Path.expand("../elixir_graphql_todoapi_test.db", Path.dirname(__ENV__.file)),
  pool_size: 5,
  pool: Ecto.Adapters.SQL.Sandbox

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :elixir_graphql_todoapi, ElixirGraphqlTodoapiWeb.Endpoint,
  http: [ip: {127, 0, 0, 1}, port: 4002],
  secret_key_base: "iU5TcnMQfDhrzrOiXlSneez5mRynenrj4AHI1rg6Y0UqmnquKX0OstOgs2ET5t5x",
  server: false

# In test we don't send emails.
config :elixir_graphql_todoapi, ElixirGraphqlTodoapi.Mailer, adapter: Swoosh.Adapters.Test

# Disable swoosh api client as it is only required for production adapters.
config :swoosh, :api_client, false

# Print only warnings and errors during test
config :logger, level: :warning

# Initialize plugs at runtime for faster test compilation
config :phoenix, :plug_init_mode, :runtime
