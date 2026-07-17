Package: `effect`<br />
Module: `HttpMiddleware`<br />

## HttpMiddleware.logger

Middleware that logs sent HTTP responses with request method, request URL, and response status annotations.

**Signature**

```ts
declare const logger: <E, R>(httpApp: Effect.Effect<HttpServerResponse, E, HttpServerRequest | R>) => Effect.Effect<HttpServerResponse, E, HttpServerRequest | R>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/HttpMiddleware.ts#L135)

Since v4.0.0