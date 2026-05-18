Package: `effect`<br />
Module: `SqlRunnerStorage`<br />

## SqlRunnerStorage.layer

Layer that provides SQL-backed `RunnerStorage` using the default table prefix.

**Signature**

```ts
declare const layer: Layer.Layer<RunnerStorage.RunnerStorage, SqlError, SqlClient.SqlClient | ShardingConfig.ShardingConfig>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SqlRunnerStorage.ts#L686)

Since v4.0.0