Package: `effect`<br />
Module: `SocketRunner`<br />

## SocketRunner.layerClientOnly

Provides a client-only socket runner layer that provides `Sharding` and `Runners` clients
without starting a runner server or receiving shard assignments.

**When to use**

Use to join a socket-based cluster as a client-only participant that can send
messages without hosting shards.

**Signature**

```ts
declare const layerClientOnly: Layer.Layer<Sharding.Sharding | Runners.Runners, never, MessageStorage | RunnerStorage.RunnerStorage | ShardingConfig | Runners.RpcClientProtocol>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/SocketRunner.ts#L92)

Since v4.0.0