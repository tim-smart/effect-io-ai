Package: `effect`<br />
Module: `HttpEffect`<br />

## HttpEffect.toHandled

Runs an HTTP server effect, sends the produced response with the supplied handler, and converts failures into HTTP responses.

**Signature**

```ts
declare const toHandled: <E, R, EH, RH>(self: Effect.Effect<HttpServerResponse, E, R>, handleResponse: (request: HttpServerRequest, response: HttpServerResponse) => Effect.Effect<unknown, EH, RH>, middleware?: HttpMiddleware | undefined) => Effect.Effect<void, never, Exclude<R | RH | HttpServerRequest, Scope.Scope>>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/HttpEffect.ts#L36)

Since v4.0.0