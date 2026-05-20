Package: `@effect/platform-node`<br />
Module: `NodeClusterSocket`<br />

## NodeClusterSocket.layer

Builds the Node cluster socket sharding layer, configuring RPC
serialization, message storage, runner health checks, and optional
client-only mode.

**Signature**

```ts
declare const layer: <const ClientOnly extends boolean = false, const Storage extends "local" | "sql" | "byo" = never>(options?: { readonly serialization?: "msgpack" | "ndjson" | undefined; readonly clientOnly?: ClientOnly | undefined; readonly storage?: Storage | undefined; readonly runnerHealth?: "ping" | "k8s" | undefined; readonly runnerHealthK8s?: { readonly namespace?: string | undefined; readonly labelSelector?: string | undefined; } | undefined; readonly shardingConfig?: Partial<ShardingConfig.ShardingConfig["Service"]> | undefined; }) => ClientOnly extends true ? Layer.Layer<Sharding | Runners.Runners | ("byo" extends Storage ? never : MessageStorage.MessageStorage), ConfigError, "local" extends Storage ? never : "byo" extends Storage ? (MessageStorage.MessageStorage | RunnerStorage.RunnerStorage) : SqlClient> : Layer.Layer<Sharding | Runners.Runners | ("byo" extends Storage ? never : MessageStorage.MessageStorage), SocketServer.SocketServerError | ConfigError, "local" extends Storage ? never : "byo" extends Storage ? (MessageStorage.MessageStorage | RunnerStorage.RunnerStorage) : SqlClient>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/platform-node/src/NodeClusterSocket.ts#L82)

Since v4.0.0