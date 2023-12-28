# Script for populating the database. You can run it as:
#
#     mix run priv/repo/seeds.exs
#
# Inside the script, you can read and write to any of your
# repositories directly:
#
#     ElixirGraphqlTodoapi.Repo.insert!(%ElixirGraphqlTodoapi.SomeSchema{})
#
# We recommend using the bang functions (`insert!`, `update!`
# and so on) as they will fail if something goes wrong.
alias ElixirGraphqlTodoapi.Todos

for _ <- 1..10 do
  Todos.create_todo(%{
    title: Faker.Food.ingredient(),
    completed: Enum.random([false, true]),
  })
end
