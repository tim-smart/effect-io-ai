Package: `@effect/platform-bun`<br />
Module: `BunClusterHttp`<br />

## BunClusterHttp.layer

Creates Bun cluster layers for HTTP or WebSocket transport, configuring serialization, storage, runner health, and optional client-only mode.

**Signature**

```ts
declare const layer: <const ClientOnly extends boolean = false, const Storage extends "local" | "sql" | "byo" = never>(options: { readonly transport: "http" | "websocket"; readonly serialization?: "msgpack" | "ndjson" | undefined; readonly clientOnly?: ClientOnly | undefined; readonly storage?: Storage | undefined; readonly runnerHealth?: "ping" | "k8s" | undefined; readonly runnerHealthK8s?: { readonly namespace?: string | undefined; readonly labelSelector?: string | undefined; } | undefined; readonly shardingConfig?: Partial<ShardingConfig.ShardingConfig["Service"]> | undefined; }) => ClientOnly extends true ? Layer.Layer<Sharding | Runners.Runners | ("byo" extends Storage ? never : MessageStorage.MessageStorage), Config.ConfigError, "local" extends Storage ? never : "byo" extends Storage ? (MessageStorage.MessageStorage | RunnerStorage.RunnerStorage) : SqlClient> : Layer.Layer<Sharding | Runners.Runners | MessageStorage.MessageStorage, ServeError | Config.ConfigError, "local" extends Storage ? never : "byo" extends Storage ? (MessageStorage.MessageStorage | RunnerStorage.RunnerStorage) : SqlClient>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/platform-bun/src/BunClusterHttp.ts#L99)

Since v4.0.0