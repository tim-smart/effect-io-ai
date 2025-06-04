Package: `@effect/cluster`<br />
Module: `RunnerHealth`<br />

## RunnerHealth.layerRpc

A layer which will ping a Runner directly to check if it is healthy.

**Signature**

```ts
declare const layerRpc: Layer.Layer<RunnerHealth, never, ShardingConfig | Runners.RpcClientProtocol>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/platform/src/RunnerHealth.ts#L80)

Since v1.0.0