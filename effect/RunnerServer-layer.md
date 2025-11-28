Package: `@effect/cluster`<br />
Module: `RunnerServer`<br />

## RunnerServer.layer

The `RunnerServer` recieves messages from other Runners and forwards them to the
`Sharding` layer.

It also responds to `Ping` requests.

**Signature**

```ts
declare const layer: Layer.Layer<never, never, Sharding.Sharding | MessageStorage.MessageStorage | RpcServer.Protocol>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/cluster/src/RunnerServer.ts#L150)

Since v1.0.0