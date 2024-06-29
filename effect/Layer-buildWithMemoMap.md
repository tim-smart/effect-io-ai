# buildWithMemoMap

Builds a layer into an `Effect` value, using the specified `MemoMap` to memoize
the layer construction.

To import and use `buildWithMemoMap` from the "Layer" module:

```ts
import * as Layer from "effect/Layer"
// Can be accessed like this
Layer.buildWithMemoMap
```

**Signature**

```ts
export declare const buildWithMemoMap: {
  (
    memoMap: MemoMap,
    scope: Scope.Scope
  ): <RIn, E, ROut>(self: Layer<ROut, E, RIn>) => Effect.Effect<Context.Context<ROut>, E, RIn>
  <RIn, E, ROut>(
    self: Layer<ROut, E, RIn>,
    memoMap: MemoMap,
    scope: Scope.Scope
  ): Effect.Effect<Context.Context<ROut>, E, RIn>
}
```
