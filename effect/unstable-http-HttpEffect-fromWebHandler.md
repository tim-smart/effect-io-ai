Package: `effect`<br />
Module: `HttpEffect`<br />

## HttpEffect.fromWebHandler

Adapts a Web `Request` handler into an HTTP server effect for the current `HttpServerRequest`.

**Signature**

```ts
declare const fromWebHandler: (handler: (request: Request) => Promise<Response>) => Effect.Effect<HttpServerResponse, HttpServerError, HttpServerRequest>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/HttpEffect.ts#L375)

Since v4.0.0