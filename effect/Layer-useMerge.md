# useMerge

Feeds the output services of this layer into the input of the specified
layer, resulting in a new layer with the inputs of this layer, and the
outputs of both layers.

To import and use `useMerge` from the "Layer" module:

```ts
import * as Layer from "effect/Layer"
// Can be accessed like this
Layer.useMerge
```

**Signature**

```ts
export declare const useMerge: {
  <RIn, E, ROut>(
    self: Layer<RIn, E, ROut>
  ): <RIn2, E2, ROut2>(that: Layer<RIn2, E2, ROut2>) => Layer<RIn | Exclude<RIn2, ROut>, E | E2, ROut | ROut2>
  <RIn2, E2, ROut2, RIn, E, ROut>(
    that: Layer<RIn2, E2, ROut2>,
    self: Layer<RIn, E, ROut>
  ): Layer<RIn | Exclude<RIn2, ROut>, E2 | E, ROut2 | ROut>
}
```
