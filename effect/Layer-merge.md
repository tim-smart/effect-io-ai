# merge

Merges this layer with the specified layer concurrently, producing a new layer with combined input and output types.

To import and use `merge` from the "Layer" module:

```ts
import * as Layer from "effect/Layer"
// Can be accessed like this
Layer.merge
```

**Signature**

```ts
export declare const merge: {
  <RIn2, E2, ROut2>(
    that: Layer<RIn2, E2, ROut2>
  ): <RIn, E1, ROut>(self: Layer<RIn, E1, ROut>) => Layer<RIn2 | RIn, E2 | E1, ROut2 | ROut>
  <RIn, E1, ROut, RIn2, E2, ROut2>(
    self: Layer<RIn, E1, ROut>,
    that: Layer<RIn2, E2, ROut2>
  ): Layer<RIn | RIn2, E1 | E2, ROut | ROut2>
}
```
