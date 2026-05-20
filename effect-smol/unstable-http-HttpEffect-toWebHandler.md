Package: `effect`<br />
Module: `HttpEffect`<br />

## HttpEffect.toWebHandler

Converts an HTTP server effect into a Web `Request` handler using an empty base context.

**Signature**

```ts
declare const toWebHandler: <E>(self: Effect.Effect<HttpServerResponse, E, HttpServerRequest | Scope.Scope>, middleware?: HttpMiddleware | undefined) => (request: Request, context?: Context.Context<never> | undefined) => Promise<globalThis.Response>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/HttpEffect.ts#L284)

Since v4.0.0