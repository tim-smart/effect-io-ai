Package: `effect`<br />
Module: `RunnerServer`<br />

## RunnerServer.layerClientOnly

A `Runners` layer that is client only.

It will not register with the ShardManager and recieve shard assignments,
so this layer can be used to embed a cluster client inside another effect
application.

**Signature**

```ts
declare const layerClientOnly: Layer.Layer<Sharding.Sharding | Runners.Runners, never, MessageStorage.MessageStorage | RunnerStorage.RunnerStorage | ShardingConfig | Runners.RpcClientProtocol>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/RunnerServer.ts#L182)

Since v4.0.0