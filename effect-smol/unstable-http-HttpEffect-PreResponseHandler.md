Package: `effect`<br />
Module: `HttpEffect`<br />

## HttpEffect.PreResponseHandler

Function run with the current request and response just before the response is sent, allowing the response to be replaced or failing with `HttpServerError`.

**Signature**

```ts
type PreResponseHandler = (
  request: HttpServerRequest,
  response: HttpServerResponse
) => Effect.Effect<HttpServerResponse, HttpServerError>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/HttpEffect.ts#L206)

Since v4.0.0