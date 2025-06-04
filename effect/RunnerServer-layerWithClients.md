Package: `@effect/cluster`<br />
Module: `RunnerServer`<br />

## RunnerServer.layerWithClients

A `RunnerServer` layer that includes the `Runners` & `Sharding` clients.

**Signature**

```ts
declare const layerWithClients: Layer.Layer<Sharding.Sharding | Runners.Runners, never, ShardStorage.ShardStorage | MessageStorage.MessageStorage | ShardingConfig | Runners.RpcClientProtocol | RpcServer.Protocol>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/platform/src/RunnerServer.ts#L128)

Since v1.0.0