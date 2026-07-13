Package: `effect`<br />
Module: `RpcServer`<br />

## RpcServer.makeProtocolWithHttpEffectWebsocket

Creates a websocket server `Protocol` together with an HTTP effect that
upgrades the current request to a websocket and attaches it to the protocol.

**Signature**

```ts
declare const makeProtocolWithHttpEffectWebsocket: Effect.Effect<{ readonly protocol: Protocol["Service"]; readonly httpEffect: Effect.Effect<HttpServerResponse.HttpServerResponse, never, Scope.Scope | HttpServerRequest.HttpServerRequest>; }, never, RpcSerialization.RpcSerialization>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/RpcServer.ts#L899)

Since v4.0.0