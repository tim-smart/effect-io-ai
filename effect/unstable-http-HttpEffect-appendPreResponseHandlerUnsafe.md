Package: `effect`<br />
Module: `HttpEffect`<br />

## HttpEffect.appendPreResponseHandlerUnsafe

Registers a pre-response handler for the supplied HTTP server request.

**Signature**

```ts
declare const appendPreResponseHandlerUnsafe: (request: HttpServerRequest, handler: PreResponseHandler) => void
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/HttpEffect.ts#L202)

Since v4.0.0