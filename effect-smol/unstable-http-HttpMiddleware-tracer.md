Package: `effect`<br />
Module: `HttpMiddleware`<br />

## HttpMiddleware.tracer

Middleware that creates a server trace span for each request and records request and response HTTP attributes.

**Signature**

```ts
declare const tracer: <E, R>(httpApp: Effect.Effect<HttpServerResponse, E, HttpServerRequest | R>) => Effect.Effect<HttpServerResponse, E, HttpServerRequest | R>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/HttpMiddleware.ts#L188)

Since v4.0.0