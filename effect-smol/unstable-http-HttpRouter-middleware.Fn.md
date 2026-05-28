Package: `effect`<br />
Module: `HttpRouter`<br />

## HttpRouter.middleware.Fn

Function that transforms an HTTP response effect into another HTTP response
effect.

**Signature**

```ts
type Fn = (
    effect: Effect.Effect<HttpServerResponse.HttpServerResponse>
  ) => Effect.Effect<HttpServerResponse.HttpServerResponse>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/HttpRouter.ts#L1176)

Since v4.0.0