Package: `@effect/sql-mssql`<br />
Module: `MssqlClient`<br />

## MssqlClient.make

Creates a scoped Microsoft SQL Server client backed by a connection pool, with transaction and stored procedure support. Streaming queries are not implemented.

**Signature**

```ts
declare const make: (options: MssqlClientConfig) => Effect.Effect<MssqlClient, SqlError, Scope.Scope | Reactivity.Reactivity>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/sql/d1/src/MssqlClient.ts#L278)

Since v4.0.0