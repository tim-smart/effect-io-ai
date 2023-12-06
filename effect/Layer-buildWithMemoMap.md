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
  ): <RIn, E, ROut>(self: Layer<RIn, E, ROut>) => Effect.Effect<RIn, E, Context.Context<ROut>>
  <RIn, E, ROut>(
    self: Layer<RIn, E, ROut>,
    memoMap: MemoMap,
    scope: Scope.Scope
  ): Effect.Effect<RIn, E, Context.Context<ROut>>
}
```
