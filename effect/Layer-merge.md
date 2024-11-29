# merge

Merges this layer with the specified layer concurrently, producing a new layer with combined input and output types.

To import and use `merge` from the "Layer" module:

ts
import \* as Layer from "effect/Layer"
// Can be accessed like this
Layer.merge
undefined

**Signature**

```ts
export declare const merge: {
  <RIn2, E2, ROut2>(
    that: Layer<ROut2, E2, RIn2>
  ): <RIn, E1, ROut>(self: Layer<ROut, E1, RIn>) => Layer<ROut2 | ROut, E2 | E1, RIn2 | RIn>
  <RIn, E1, ROut, RIn2, E2, ROut2>(
    self: Layer<ROut, E1, RIn>,
    that: Layer<ROut2, E2, RIn2>
  ): Layer<ROut | ROut2, E1 | E2, RIn | RIn2>
}
```
