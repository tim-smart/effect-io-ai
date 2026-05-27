Package: `effect`<br />
Module: `SingleRunner`<br />

## SingleRunner.layer

A sql backed single-node cluster, that can be used for running durable
entities and workflows.

**When to use**

Use to run durable cluster entities and workflows in a local, embedded, or
small single-node process while keeping mailbox and reply state in SQL.

**Details**

The layer provides `Sharding`, `Runners`, and `MessageStorage`. It loads
`ShardingConfig` from environment variables and overlays
`options.shardingConfig` when provided. Message storage is always SQL-backed;
runner storage is SQL-backed by default and switches to in-memory storage
when `runnerStorage` is set to `"memory"`.

**Gotchas**

- Even when `runnerStorage` is `"memory"`, message storage remains
  SQL-backed, so callers must still provide `SqlClient`.
- Runner communication and runner health are no-op services, so this layer is
  for single-process use rather than multi-runner coordination.

**See**

- `ShardingConfig.layerFromEnv` for loading environment configuration before applying `shardingConfig` overrides
- `SqlMessageStorage.layer` for the SQL-backed message storage that this layer provides
- `SqlRunnerStorage.layer` for the default SQL-backed runner storage selected when `runnerStorage` is omitted or `"sql"`
- `RunnerStorage.layerMemory` for the in-memory runner storage selected by `runnerStorage: "memory"`

**Signature**

```ts
declare const layer: (options?: { readonly shardingConfig?: Partial<ShardingConfig.ShardingConfig["Service"]> | undefined; readonly runnerStorage?: "memory" | "sql" | undefined; }) => Layer.Layer<Sharding.Sharding | Runners.Runners | MessageStorage.MessageStorage, ConfigError, SqlClient.SqlClient>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SingleRunner.ts#L70)

Since v4.0.0