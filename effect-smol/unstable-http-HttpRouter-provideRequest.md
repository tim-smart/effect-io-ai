Package: `effect`<br />
Module: `HttpRouter`<br />

## HttpRouter.provideRequest

Provides request-level dependencies to some routes.

**Signature**

```ts
declare const provideRequest: <A2, E2, R2>(layer: Layer.Layer<A2, E2, R2>) => <A, E, R>(self: Layer.Layer<A, E, R>) => Layer.Layer<A, E | E2, R2 | Exclude<R, Request.From<"Requires", A2>>>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/HttpRouter.ts#L1037)

Since v4.0.0