defmodule ElixirGraphqlTodoapi.TodoResolver do
  alias ElixirGraphqlTodoapi.Todos

  def all(_args, _info) do
    {:ok, Todos.list_todos()}
  end

  def find(%{id: id}, _info) do
    case Todos.get_todo!(id) do
      nil -> {:error, "User id #{id} not found"}
      user -> {:ok, user}
    end
  end
end
