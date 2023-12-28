defmodule ElixirGraphqlTodoapi.Repo do
  use Ecto.Repo,
    otp_app: :elixir_graphql_todoapi,
    adapter: Ecto.Adapters.SQLite3
end
