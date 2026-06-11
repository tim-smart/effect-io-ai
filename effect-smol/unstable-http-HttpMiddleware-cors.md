Package: `effect`<br />
Module: `HttpMiddleware`<br />

## HttpMiddleware.cors

Middleware that handles CORS preflight requests and adds configured CORS headers to HTTP responses.

**Signature**

```ts
declare const cors: (options?: { readonly allowedOrigins?: ReadonlyArray<string> | Predicate<string> | undefined; readonly allowedMethods?: ReadonlyArray<string> | undefined; readonly allowedHeaders?: ReadonlyArray<string> | undefined; readonly exposedHeaders?: ReadonlyArray<string> | undefined; readonly maxAge?: number | undefined; readonly credentials?: boolean | undefined; }) => <E, R>(httpApp: Effect.Effect<HttpServerResponse, E, R>) => Effect.Effect<HttpServerResponse, E, R | HttpServerRequest>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/HttpMiddleware.ts#L280)

Since v4.0.0