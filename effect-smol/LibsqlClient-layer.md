Package: `@effect/sql-libsql`<br />
Module: `LibsqlClient`<br />

## LibsqlClient.layer

Creates a layer from a concrete libSQL client configuration, providing both `LibsqlClient` and `SqlClient`.

**Signature**

```ts
declare const layer: (config: LibsqlClientConfig) => Layer.Layer<LibsqlClient | Client.SqlClient>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/sql/libsql/src/LibsqlClient.ts#L366)

Since v4.0.0