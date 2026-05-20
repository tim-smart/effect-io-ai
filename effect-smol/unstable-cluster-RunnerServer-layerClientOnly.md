Package: `effect`<br />
Module: `RunnerServer`<br />

## RunnerServer.layerClientOnly

Creates a client-only `Runners` layer.

**When to use**

Use this layer to embed a cluster client inside another Effect application
without registering with the ShardManager or receiving shard assignments.

**Signature**

```ts
declare const layerClientOnly: Layer.Layer<Sharding.Sharding | Runners.Runners, never, MessageStorage.MessageStorage | RunnerStorage.RunnerStorage | ShardingConfig | Runners.RpcClientProtocol>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/RunnerServer.ts#L206)

Since v4.0.0