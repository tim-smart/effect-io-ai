Package: `effect`<br />
Module: `HttpMiddleware`<br />

## HttpMiddleware.HttpMiddleware.Applied

Callable type representing middleware already specialized to a particular transformed app type.

**Signature**

```ts
export interface Applied<A extends Effect.Effect<HttpServerResponse, any, any>, E, R> {
    (self: Effect.Effect<HttpServerResponse, E, R>): A
  }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/HttpMiddleware.ts#L55)

Since v4.0.0