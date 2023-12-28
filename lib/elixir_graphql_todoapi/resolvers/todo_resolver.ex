defmodule ElixirGraphqlTodoapi.TodoResolver do
  alias ElixirGraphqlTodoapi.Todos

  def all(_args, _info) do
    {:ok, Todos.list_todos()}
  end

  def create(args, _info) do
    Todos.create_todo(args)
  end

  def update(%{id: id, todo: todo_params}, _info) do
    Todos.get_todo!(id)
    |> Todos.update_todo(todo_params)
  end

  def delete(%{id: id}, _info) do
    Todos.get_todo!(id)
    |> Todos.delete_todo
  end

  def find(%{id: id}, _info) do
    case Todos.get_todo!(id) do
      nil -> {:error, "User id #{id} not found"}
      user -> {:ok, user}
    end
  end
end
