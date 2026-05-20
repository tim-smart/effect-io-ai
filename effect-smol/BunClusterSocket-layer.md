Package: `@effect/platform-bun`<br />
Module: `BunClusterSocket`<br />

## BunClusterSocket.layer

Creates Bun socket cluster layers, configuring serialization, storage, runner health, and optional client-only mode.

**Signature**

```ts
declare const layer: <const ClientOnly extends boolean = false, const Storage extends "local" | "sql" | "byo" = never>(options?: { readonly serialization?: "msgpack" | "ndjson" | undefined; readonly clientOnly?: ClientOnly | undefined; readonly storage?: Storage | undefined; readonly runnerHealth?: "ping" | "k8s" | undefined; readonly runnerHealthK8s?: { readonly namespace?: string | undefined; readonly labelSelector?: string | undefined; } | undefined; readonly shardingConfig?: Partial<ShardingConfig.ShardingConfig["Service"]> | undefined; }) => ClientOnly extends true ? Layer.Layer<Sharding | Runners.Runners | ("byo" extends Storage ? never : MessageStorage.MessageStorage), Config.ConfigError, "local" extends Storage ? never : "byo" extends Storage ? (MessageStorage.MessageStorage | RunnerStorage.RunnerStorage) : SqlClient> : Layer.Layer<Sharding | Runners.Runners | ("byo" extends Storage ? never : MessageStorage.MessageStorage), SocketServer.SocketServerError | Config.ConfigError, "local" extends Storage ? never : "byo" extends Storage ? (MessageStorage.MessageStorage | RunnerStorage.RunnerStorage) : SqlClient>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/platform-bun/src/BunClusterSocket.ts#L85)

Since v4.0.0