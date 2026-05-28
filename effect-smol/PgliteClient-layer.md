Package: `@effect/sql-pglite`<br />
Module: `PgliteClient`<br />

## PgliteClient.layer

Creates a layer from a concrete PGlite client configuration, providing both `PgliteClient` and `SqlClient`.

**Signature**

```ts
declare const layer: (config?: PgliteClientConfig | undefined) => Layer.Layer<PgliteClient | Client.SqlClient, SqlError>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/sql/pglite/src/PgliteClient.ts#L393)

Since v4.0.0