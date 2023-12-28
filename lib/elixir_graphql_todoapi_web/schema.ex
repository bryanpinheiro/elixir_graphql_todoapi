defmodule ElixirGraphqlTodoapiWeb.Schema do
  use Absinthe.Schema
  import_types ElixirGraphqlTodoapiWeb.Schema.Types

  query do
    field :todos, list_of(:todo) do
      resolve &ElixirGraphqlTodoapi.TodoResolver.all/2
    end

    field :todo, type: :todo do
      arg :id, non_null(:id)
      resolve &ElixirGraphqlTodoapi.TodoResolver.find/2
    end
  end
end
