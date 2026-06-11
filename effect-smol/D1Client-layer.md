Package: `@effect/sql-d1`<br />
Module: `D1Client`<br />

## D1Client.layer

Creates a layer from a concrete D1 client configuration, providing both `D1Client` and `SqlClient`.

**Signature**

```ts
declare const layer: (config: D1ClientConfig) => Layer.Layer<D1Client | Client.SqlClient, Config.ConfigError>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/sql/d1/src/D1Client.ts#L241)

Since v4.0.0