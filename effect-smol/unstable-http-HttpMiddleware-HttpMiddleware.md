Package: `effect`<br />
Module: `HttpMiddleware`<br />

## HttpMiddleware.HttpMiddleware

Middleware that transforms an HTTP server app effect into another HTTP server app effect.

**Signature**

```ts
export interface HttpMiddleware {
  <E, R>(self: Effect.Effect<HttpServerResponse, E, R | HttpServerRequest>): Effect.Effect<HttpServerResponse, any, any>
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/HttpMiddleware.ts#L40)

Since v4.0.0