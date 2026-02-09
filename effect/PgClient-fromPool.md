Package: `@effect/sql-pg`<br />
Module: `PgClient`<br />

## PgClient.fromPool

Create a `PgClient` from an existing `pg` pool.

You control the pool lifecycle via `acquire` (typically `Effect.acquireRelease`).

**Signature**

```ts
declare const fromPool: (options: PgClientFromPoolOptions) => Effect.Effect<PgClient, SqlError, Scope.Scope | Reactivity.Reactivity>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/sql-pg/src/PgClient.ts#L470)

Since v1.0.0