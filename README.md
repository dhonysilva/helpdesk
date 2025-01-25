# Helpdesk

Application created during the process of learning how to develop applications utlizing the multitenacy capacility with Ash Framework.

I walked throught these two tutorials to get a better understanding of how to implement multitenancy:

- [Part 01](https://medium.com/@lambert.kamaro/how-to-build-a-saas-using-phoenix-and-ash-framework-1-4-69f3a622470d)
- [Part 02](https://medium.com/@lambert.kamaro/how-to-build-a-saas-using-phoenix-and-ash-framework-2-4-41ccbb8003fe)

For this project, we're utilizing the `:context` strategy. For `AshPostgres` uses postgres schemas. Each tenant has its own database schema.

We can fetch the data from each tenant by using the schema name as a prefix. For example, to fetch the tickets from tenant_01, tenant_02 e tenant_03 we can run the following query:

```sql
select * from tenant_01.tickets;
select * from tenant_02.tickets;
select * from tenant_03.tickets;
```


## Learn more
Here is the official Ash Multitenacy documentation:

https://hexdocs.pm/ash/multitenancy.html

### Setting up the project
To start this Phoenix server:

  * Run `mix setup` to install and setup dependencies
  * Start Phoenix endpoint with `mix phx.server` or inside IEx with `iex -S mix phx.server`

Now you can visit [`localhost:4000`](http://localhost:4000) from your browser.
