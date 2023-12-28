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

  input_object :update_todo_params do
    field :completed, non_null(:boolean)
  end

  mutation do
    field :create_todo, type: :todo do
      arg :title, non_null(:string)

      resolve &ElixirGraphqlTodoapi.TodoResolver.create/2
    end

    field :update_todo, type: :todo do
      arg :id, non_null(:integer)
      arg :todo, :update_todo_params

      resolve &ElixirGraphqlTodoapi.TodoResolver.update/2
    end

    field :delete_todo, type: :todo do
      arg :id, non_null(:integer)

      resolve &ElixirGraphqlTodoapi.TodoResolver.delete/2
    end
  end
end
