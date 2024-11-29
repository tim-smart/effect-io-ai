# provideMerge

Feeds the output services of this layer into the input of the specified
layer, resulting in a new layer with the inputs of this layer, and the
outputs of both layers.

To import and use `provideMerge` from the "Layer" module:

ts
import \* as Layer from "effect/Layer"
// Can be accessed like this
Layer.provideMerge
undefined

**Signature**

```ts
export declare const provideMerge: {
  <RIn, E, ROut>(
    self: Layer<ROut, E, RIn>
  ): <RIn2, E2, ROut2>(that: Layer<ROut2, E2, RIn2>) => Layer<ROut | ROut2, E | E2, RIn | Exclude<RIn2, ROut>>
  <RIn2, E2, ROut2, RIn, E, ROut>(
    that: Layer<ROut2, E2, RIn2>,
    self: Layer<ROut, E, RIn>
  ): Layer<ROut2 | ROut, E2 | E, RIn | Exclude<RIn2, ROut>>
}
```
