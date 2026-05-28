Package: `effect`<br />
Module: `HttpRunner`<br />

## HttpRunner.layerWebsocketClientOnly

Provides a client-only WebSocket runner layer.

**When to use**

Use to provide runner clients over WebSocket from a process that should not
serve runner routes.

**Details**

It configures runner clients to communicate over WebSocket without serving
runner WebSocket routes.

**Signature**

```ts
declare const layerWebsocketClientOnly: Layer.Layer<Sharding.Sharding | Runners.Runners, never, Socket.WebSocketConstructor | RpcSerialization.RpcSerialization | MessageStorage | RunnerStorage | ShardingConfig.ShardingConfig>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/HttpRunner.ts#L362)

Since v4.0.0