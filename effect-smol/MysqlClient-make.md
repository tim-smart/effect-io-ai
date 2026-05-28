Package: `@effect/sql-mysql2`<br />
Module: `MysqlClient`<br />

## MysqlClient.make

Creates a scoped MySQL client backed by a managed mysql2 pool, verifying connectivity and supporting streaming queries through mysql2 query streams.

**Signature**

```ts
declare const make: (options: MysqlClientConfig) => Effect.Effect<MysqlClient, SqlError, Scope | Reactivity.Reactivity>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/sql/mysql2/src/MysqlClient.ts#L233)

Since v4.0.0