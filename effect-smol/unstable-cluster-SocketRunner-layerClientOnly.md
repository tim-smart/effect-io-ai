Package: `effect`<br />
Module: `SocketRunner`<br />

## SocketRunner.layerClientOnly

Client-only socket runner layer that provides `Sharding` and `Runners` clients
without starting a runner server or receiving shard assignments.

**Signature**

```ts
declare const layerClientOnly: Layer.Layer<Sharding.Sharding | Runners.Runners, never, MessageStorage | RunnerStorage.RunnerStorage | ShardingConfig | Runners.RpcClientProtocol>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SocketRunner.ts#L100)

Since v4.0.0