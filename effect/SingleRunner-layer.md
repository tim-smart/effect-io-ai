Package: `@effect/cluster`<br />
Module: `SingleRunner`<br />

## SingleRunner.layer

A sql backed single-node cluster, that can be used for running durable
entities and workflows.

**Signature**

```ts
declare const layer: (options?: { readonly shardingConfig?: Partial<ShardingConfig.ShardingConfig["Type"]> | undefined; readonly runnerStorage?: "memory" | "sql" | undefined; }) => Layer.Layer<Sharding.Sharding | Runners.Runners | MessageStorage.MessageStorage, ConfigError.ConfigError, SqlClient.SqlClient>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/cluster/src/SingleRunner.ts#L23)

Since v1.0.0