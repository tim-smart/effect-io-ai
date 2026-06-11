Package: `@effect/sql-pg`<br />
Module: `PgClient`<br />

## PgClient.layer

Creates a layer from a concrete PostgreSQL pool configuration, providing both `PgClient` and `SqlClient`.

**Signature**

```ts
declare const layer: (config: PgPoolConfig) => Layer.Layer<PgClient | Client.SqlClient, SqlError>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/sql/pg/src/PgClient.ts#L808)

Since v4.0.0