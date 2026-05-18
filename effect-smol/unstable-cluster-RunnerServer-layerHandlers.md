Package: `effect`<br />
Module: `RunnerServer`<br />

## RunnerServer.layerHandlers

Layer of RPC handlers for the runner protocol, forwarding ping, notify, effect,
stream, and envelope requests to `Sharding` and `MessageStorage`.

**Signature**

```ts
declare const layerHandlers: Layer.Layer<Handler<"Ping"> | Handler<"Notify"> | Handler<"Effect"> | Handler<"Stream"> | Handler<"Envelope">, never, Sharding.Sharding | MessageStorage.MessageStorage>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/RunnerServer.ts#L55)

Since v4.0.0