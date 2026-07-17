Package: `effect`<br />
Module: `RpcServer`<br />

## RpcServer.makeProtocolWithHttpEffect

Creates an HTTP request/response server `Protocol` together with an HTTP
effect that decodes the current request and streams or returns encoded RPC
responses.

**Signature**

```ts
declare const makeProtocolWithHttpEffect: Effect.Effect<{ readonly protocol: Protocol["Service"]; readonly httpEffect: Effect.Effect<HttpServerResponse.HttpServerResponse, never, Scope.Scope | HttpServerRequest.HttpServerRequest>; }, never, RpcSerialization.RpcSerialization>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/RpcServer.ts#L971)

Since v4.0.0