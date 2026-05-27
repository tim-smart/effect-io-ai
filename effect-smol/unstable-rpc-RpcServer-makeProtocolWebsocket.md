Package: `effect`<br />
Module: `RpcServer`<br />

## RpcServer.makeProtocolWebsocket

Creates a websocket server `Protocol` and registers its upgrade handler as a
GET route on the current `HttpRouter`.

**Signature**

```ts
declare const makeProtocolWebsocket: (options: { readonly path: HttpRouter.PathInput; }) => Effect.Effect<Protocol["Service"], never, RpcSerialization.RpcSerialization | HttpRouter.HttpRouter>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/RpcServer.ts#L956)

Since v4.0.0