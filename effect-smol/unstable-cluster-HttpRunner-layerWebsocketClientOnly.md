Package: `effect`<br />
Module: `HttpRunner`<br />

## HttpRunner.layerWebsocketClientOnly

Client-only WebSocket runner layer.

It configures runner clients to communicate over WebSocket without serving
runner WebSocket routes.

**Signature**

```ts
declare const layerWebsocketClientOnly: Layer.Layer<Sharding.Sharding | Runners.Runners, never, Socket.WebSocketConstructor | RpcSerialization.RpcSerialization | MessageStorage | RunnerStorage | ShardingConfig.ShardingConfig>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/HttpRunner.ts#L326)

Since v4.0.0