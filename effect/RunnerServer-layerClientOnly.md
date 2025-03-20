Package: `@effect/cluster`<br />
Module: `RunnerServer`<br />

## RunnerServer.layerClientOnly

A `Runners` layer that is client only.

It will not register with the ShardManager and recieve shard assignments,
so this layer can be used to embed a cluster client inside another effect
application.

**Signature**

```ts
declare const layerClientOnly: Layer.Layer<Sharding.Sharding | Runners.Runners, never, MessageStorage.MessageStorage | ShardingConfig | Runners.RpcClientProtocol>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/cluster/src/RunnerServer.ts#L142)

Since v1.0.0