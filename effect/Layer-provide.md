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
  <RIn2, E2, ROut2>(
    that: Layer<RIn2, E2, ROut2>
  ): <RIn, E, ROut>(self: Layer<RIn, E, ROut>) => Layer<RIn | Exclude<RIn2, ROut>, E2 | E, ROut2>
  <RIn, E, ROut, RIn2, E2, ROut2>(
    self: Layer<RIn, E, ROut>,
    that: Layer<RIn2, E2, ROut2>
  ): Layer<RIn | Exclude<RIn2, ROut>, E | E2, ROut2>
}
```
