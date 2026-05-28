Package: `effect`<br />
Module: `HttpRunner`<br />

## HttpRunner.layerWebsocket

Layer that serves runner routes at `/` and configures WebSocket runner clients.

**Details**

It serves runner routes at `/` and configures runner clients to communicate
over WebSocket.

**Signature**

```ts
declare const layerWebsocket: Layer.Layer<Sharding.Sharding | Runners.Runners, never, Socket.WebSocketConstructor | RpcSerialization.RpcSerialization | HttpServer.HttpServer | MessageStorage | RunnerStorage | ShardingConfig.ShardingConfig | RunnerHealth>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/HttpRunner.ts#L332)

Since v4.0.0