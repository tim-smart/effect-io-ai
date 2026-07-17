Package: `effect`<br />
Module: `HttpMiddleware`<br />

## HttpMiddleware.SpanNameGenerator

Context reference for generating server span names from HTTP server requests.

**Signature**

```ts
declare const SpanNameGenerator: Context.Reference<(request: HttpServerRequest) => string>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/HttpMiddleware.ts#L124)

Since v4.0.0