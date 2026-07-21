Package: `effect`<br />
Module: `SqlRunnerStorage`<br />

## SqlRunnerStorage.layerWith

Layer that provides SQL-backed `RunnerStorage` using a custom table prefix.

**Signature**

```ts
declare const layerWith: (options: { readonly prefix?: string | undefined; }) => Layer.Layer<RunnerStorage.RunnerStorage, SqlError, SqlClient.SqlClient | ShardingConfig.ShardingConfig>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/SqlRunnerStorage.ts#L701)

Since v4.0.0