# Graphql in elixir

[**Hex** - Elixir/Erlang package manager](https://hex.pm/)

[**HexDocs** - Packages documentation](https://hexdocs.pm/)

[Absinthe official website](https://absinthe-graphql.org/)

[Tutorial repo](https://github.com/tensor-programming/phoenix_1.3_graphql_part_2)

1. Create project(API only):
```bash
mix phx.new elixir_graphql_todoapi --database sqlite3 --no-html --no-assets
```

2. Dependencies:
- [Absinthe](https://hexdocs.pm/absinthe/overview.html)
- [Absinthe plug](https://hexdocs.pm/absinthe/plug-phoenix.html)
- [Faker](https://hex.pm/packages/faker)
- Install deps: ```mix do deps.get, compile```
  
1. Resources:
```bash
mix phx.gen.json Todos Todo todos title:string completed:boolean
```

1. Run seed:
```bash
mix run priv/repo/seeds.exs
```