defmodule ElixirGraphqlTodoapiWeb.Schema.Types do
  use Absinthe.Schema.Notation

  object :todo do
    field :id, :id
    field :title, :string
    field :completed, :boolean
  end

end
