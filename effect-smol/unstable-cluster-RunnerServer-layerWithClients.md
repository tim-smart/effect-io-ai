Package: `effect`<br />
Module: `RunnerServer`<br />

## RunnerServer.layerWithClients

A `RunnerServer` layer that includes the `Runners` & `Sharding` clients.

**Signature**

```ts
declare const layerWithClients: Layer.Layer<Sharding.Sharding | Runners.Runners, never, RpcServer.Protocol | MessageStorage.MessageStorage | RunnerStorage.RunnerStorage | ShardingConfig | Runners.RpcClientProtocol | RunnerHealth.RunnerHealth>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/RunnerServer.ts#L158)

Since v4.0.0