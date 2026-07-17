Package: `effect`<br />
Module: `RunnerServer`<br />

## RunnerServer.layerWithClients

Layer that provides `RunnerServer` together with `Runners` and `Sharding`
clients.

**Signature**

```ts
declare const layerWithClients: Layer.Layer<Sharding.Sharding | Runners.Runners, never, RpcServer.Protocol | MessageStorage.MessageStorage | RunnerStorage.RunnerStorage | ShardingConfig | Runners.RpcClientProtocol | RunnerHealth.RunnerHealth>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/RunnerServer.ts#L181)

Since v4.0.0