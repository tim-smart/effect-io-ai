Package: `effect`<br />
Module: `Layer`<br />

## Layer.tap

Performs the specified effect if this layer succeeds.

**Signature**

```ts
declare const tap: { <ROut, XR extends ROut, RIn2, E2, X>(f: (context: Context.Context<XR>) => Effect.Effect<X, E2, RIn2>): <RIn, E>(self: Layer<ROut, E, RIn>) => Layer<ROut, E2 | E, RIn2 | RIn>; <RIn, E, ROut, XR extends ROut, RIn2, E2, X>(self: Layer<ROut, E, RIn>, f: (context: Context.Context<XR>) => Effect.Effect<X, E2, RIn2>): Layer<ROut, E | E2, RIn | RIn2>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Layer.ts#L748)

Since v2.0.0