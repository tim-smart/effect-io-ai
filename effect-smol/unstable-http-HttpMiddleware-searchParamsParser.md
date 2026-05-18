Package: `effect`<br />
Module: `HttpMiddleware`<br />

## HttpMiddleware.searchParamsParser

Middleware that parses the current request URL's search parameters and provides them as `ParsedSearchParams`.

**Signature**

```ts
declare const searchParamsParser: <E, R>(httpApp: Effect.Effect<HttpServerResponse, E, R>) => Effect.Effect<Response.HttpServerResponse, E, HttpServerRequest | Exclude<R, Request.ParsedSearchParams>>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/HttpMiddleware.ts#L272)

Since v4.0.0