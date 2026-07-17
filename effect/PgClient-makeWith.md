Package: `@effect/sql-pg`<br />
Module: `PgClient`<br />

## PgClient.makeWith

Creates a `PgClient` from SQL connection acquirers, a LISTEN acquirer, client configuration, and transformation options.

**When to use**

Use to build a PostgreSQL client from custom connection acquisition logic
instead of the built-in pool or single-client constructors.

**Signature**

```ts
declare const makeWith: (options: { readonly acquirer: SqlConnection.Acquirer; readonly transactionAcquirer: SqlConnection.Acquirer; readonly listenAcquirer: Effect.Effect<Pg.ClientBase, SqlError, Scope.Scope>; readonly config: PgClientConfig; readonly spanAttributes?: Record<string, unknown> | undefined; readonly transformResultNames?: ((str: string) => string) | undefined; readonly transformQueryNames?: ((str: string) => string) | undefined; readonly transformJson?: boolean | undefined; }) => Effect.Effect<PgClient, SqlError, Scope.Scope | Reactivity.Reactivity>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/sql/pg/src/PgClient.ts#L559)

Since v4.0.0