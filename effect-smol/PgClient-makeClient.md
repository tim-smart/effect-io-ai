Package: `@effect/sql-pg`<br />
Module: `PgClient`<br />

## PgClient.makeClient

Creates a scoped PostgreSQL client backed by a managed single `pg` client, optionally acquiring a separate client for streaming and LISTEN operations.

**Signature**

```ts
declare const makeClient: (options: PgClientConfig & { readonly acquireForStream?: boolean | undefined; }) => Effect.Effect<PgClient, SqlError, Scope.Scope | Reactivity.Reactivity>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/sql/pg/src/PgClient.ts#L240)

Since v4.0.0