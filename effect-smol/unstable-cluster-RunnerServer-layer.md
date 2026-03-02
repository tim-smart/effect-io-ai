Package: `effect`<br />
Module: `RunnerServer`<br />

## RunnerServer.layer

The `RunnerServer` recieves messages from other Runners and forwards them to the
`Sharding` layer.

It also responds to `Ping` requests.

**Signature**

```ts
declare const layer: Layer.Layer<never, never, RpcServer.Protocol | Sharding.Sharding | MessageStorage.MessageStorage>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/RunnerServer.ts#L143)

Since v4.0.0