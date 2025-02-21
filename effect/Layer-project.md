# project

Projects out part of one of the services output by this layer using the
specified function.

To import and use `project` from the "Layer" module:

```ts
import * as Layer from "effect/Layer"
// Can be accessed like this
Layer.project
```

**Signature**

```ts
export declare const project: {
  <I1, S1, I2, S2>(
    tagA: Context.Tag<I1, S1>,
    tagB: Context.Tag<I2, S2>,
    f: (a: Types.NoInfer<S1>) => Types.NoInfer<S2>
  ): <RIn, E>(self: Layer<I1, E, RIn>) => Layer<I2, E, RIn>
  <RIn, E, I1, S1, I2, S2>(
    self: Layer<I1, E, RIn>,
    tagA: Context.Tag<I1, S1>,
    tagB: Context.Tag<I2, S2>,
    f: (a: Types.NoInfer<S1>) => Types.NoInfer<S2>
  ): Layer<I2, E, RIn>
}
```
