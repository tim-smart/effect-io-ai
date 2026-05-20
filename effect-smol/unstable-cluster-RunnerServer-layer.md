Package: `effect`<br />
Module: `RunnerServer`<br />

## RunnerServer.layer

Creates the runner RPC server layer, which receives messages from other
runners, forwards them to the `Sharding` layer, and responds to `Ping`
requests.

**Signature**

```ts
declare const layer: Layer.Layer<never, never, RpcServer.Protocol | Sharding.Sharding | MessageStorage.MessageStorage>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/RunnerServer.ts#L166)

Since v4.0.0