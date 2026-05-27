Package: `@effect/sql-pglite`<br />
Module: `PgliteClient`<br />

## PgliteClient.layerConfig

Creates a layer from a `Config`-wrapped PGlite client configuration, providing both `PgliteClient` and `SqlClient`.

**Signature**

```ts
declare const layerConfig: (config: Config.Wrap<PgliteClientConfig.ConfigBase>) => Layer.Layer<PgliteClient | Client.SqlClient, Config.ConfigError | SqlError>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/sql/pglite/src/PgliteClient.ts#L373)

Since v4.0.0