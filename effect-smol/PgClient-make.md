Package: `@effect/sql-pg`<br />
Module: `PgClient`<br />

## PgClient.make

Creates a scoped PostgreSQL client backed by a managed `pg` connection pool.

**Signature**

```ts
declare const make: (options: PgPoolConfig) => Effect.Effect<PgClient, SqlError, Scope.Scope | Reactivity.Reactivity>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/sql/pg/src/PgClient.ts#L174)

Since v4.0.0