Package: `@effect/cluster`<br />
Module: `RunnerServer`<br />

## RunnerServer.layerWithClients

A `RunnerServer` layer that includes the `Runners` & `Sharding` clients.

**Signature**

```ts
declare const layerWithClients: Layer.Layer<Sharding.Sharding | Runners.Runners, never, MessageStorage.MessageStorage | RunnerStorage.RunnerStorage | ShardingConfig | Runners.RpcClientProtocol | RunnerHealth.RunnerHealth | RpcServer.Protocol>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/cluster/src/RunnerServer.ts#L165)

Since v1.0.0