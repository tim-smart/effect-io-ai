Package: `effect`<br />
Module: `HttpMiddleware`<br />

## HttpMiddleware.xForwardedHeaders

Middleware that trusts `X-Forwarded-Host` and `X-Forwarded-For`, updating the request host header and remote address.

**Signature**

```ts
declare const xForwardedHeaders: <E, R>(httpApp: Effect.Effect<Response.HttpServerResponse, E, HttpServerRequest | R>) => Effect.Effect<Response.HttpServerResponse, E, HttpServerRequest | R>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/HttpMiddleware.ts#L249)

Since v4.0.0