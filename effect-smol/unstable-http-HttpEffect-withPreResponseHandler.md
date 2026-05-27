Package: `effect`<br />
Module: `HttpEffect`<br />

## HttpEffect.withPreResponseHandler

Runs an effect after registering a pre-response handler for the current HTTP server request.

**Signature**

```ts
declare const withPreResponseHandler: { (handler: PreResponseHandler): <A, E, R>(self: Effect.Effect<A, E, R>) => Effect.Effect<A, E, R | HttpServerRequest>; <A, E, R>(self: Effect.Effect<A, E, R>, handler: PreResponseHandler): Effect.Effect<A, E, R | HttpServerRequest>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/HttpEffect.ts#L239)

Since v4.0.0