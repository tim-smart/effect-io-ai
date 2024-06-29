# provide

Feeds the output services of this builder into the input of the specified
builder, resulting in a new builder with the inputs of this builder as
well as any leftover inputs, and the outputs of the specified builder.

To import and use `provide` from the "Layer" module:

```ts
import * as Layer from "effect/Layer"
// Can be accessed like this
Layer.provide
```

**Signature**

```ts
export declare const provide: {
  <RIn, E, ROut>(
    self: Layer<ROut, E, RIn>
  ): <RIn2, E2, ROut2>(that: Layer<ROut2, E2, RIn2>) => Layer<ROut2, E | E2, RIn | Exclude<RIn2, ROut>>
  <RIn2, E2, ROut2, RIn, E, ROut>(
    that: Layer<ROut2, E2, RIn2>,
    self: Layer<ROut, E, RIn>
  ): Layer<ROut2, E2 | E, RIn | Exclude<RIn2, ROut>>
}
```
