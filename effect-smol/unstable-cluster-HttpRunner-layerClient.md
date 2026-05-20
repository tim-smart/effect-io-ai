Package: `effect`<br />
Module: `HttpRunner`<br />

## HttpRunner.layerClient

Layer that provides `Sharding` and `Runners` using the configured runner RPC
client protocol and storage services.

**Signature**

```ts
declare const layerClient: Layer.Layer<Sharding.Sharding | Runners.Runners, never, MessageStorage | RunnerStorage | ShardingConfig.ShardingConfig | Runners.RpcClientProtocol | RunnerHealth>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/HttpRunner.ts#L202)

Since v4.0.0