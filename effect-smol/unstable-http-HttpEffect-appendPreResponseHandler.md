Package: `effect`<br />
Module: `HttpEffect`<br />

## HttpEffect.appendPreResponseHandler

Registers an additional pre-response handler for the current HTTP server request.

**Signature**

```ts
declare const appendPreResponseHandler: (handler: PreResponseHandler) => Effect.Effect<void, never, HttpServerRequest>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/HttpEffect.ts#L200)

Since v4.0.0