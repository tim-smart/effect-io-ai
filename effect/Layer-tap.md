# tap

Performs the specified effect if this layer succeeds.

To import and use `tap` from the "Layer" module:

```ts
import * as Layer from "effect/Layer"
// Can be accessed like this
Layer.tap
```

**Signature**

```ts
export declare const tap: {
  <ROut, XR extends ROut, RIn2, E2, X>(
    f: (context: Context.Context<XR>) => Effect.Effect<X, E2, RIn2>
  ): <RIn, E>(self: Layer<ROut, E, RIn>) => Layer<ROut, E2 | E, RIn2 | RIn>
  <RIn, E, ROut, XR extends ROut, RIn2, E2, X>(
    self: Layer<ROut, E, RIn>,
    f: (context: Context.Context<XR>) => Effect.Effect<X, E2, RIn2>
  ): Layer<ROut, E | E2, RIn | RIn2>
}
```
