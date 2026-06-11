Package: `effect`<br />
Module: `RpcServer`<br />

## RpcServer.makeProtocolHttp

Creates an HTTP server `Protocol` and registers its request handler as a POST
route on the current `HttpRouter`.

**Signature**

```ts
declare const makeProtocolHttp: (options: { readonly path: HttpRouter.PathInput; }) => Effect.Effect<Protocol["Service"], never, RpcSerialization.RpcSerialization | HttpRouter.HttpRouter>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/RpcServer.ts#L1132)

Since v4.0.0