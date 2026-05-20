Package: `effect`<br />
Module: `HttpRunner`<br />

## HttpRunner.toHttpEffectWebsocket

Builds an HTTP effect that serves runner RPCs over WebSocket.

The returned effect is produced from `RunnerServer.layerHandlers` and the
cluster runner RPC group.

**Signature**

```ts
declare const toHttpEffectWebsocket: Effect.Effect<Effect.Effect<HttpServerResponse, never, Scope | HttpServerRequest>, never, Scope | Sharding.Sharding | MessageStorage | RpcSerialization.RpcSerialization>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/HttpRunner.ts#L175)

Since v4.0.0