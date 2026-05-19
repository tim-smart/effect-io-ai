Package: `effect`<br />
Module: `HttpMiddleware`<br />

## HttpMiddleware.withLoggerDisabled

Runs an effect with HTTP response logging disabled for the current server request.

**Signature**

```ts
declare const withLoggerDisabled: <A, E, R>(self: Effect.Effect<A, E, R>) => Effect.Effect<A, E, R | HttpServerRequest>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/HttpMiddleware.ts#L102)

Since v4.0.0