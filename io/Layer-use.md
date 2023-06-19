# use

Feeds the output services of this builder into the input of the specified
builder, resulting in a new builder with the inputs of this builder as
well as any leftover inputs, and the outputs of the specified builder.

Part of the `Layer` module, imported from `@effect/io/Layer`.

**Signature**

```ts
export declare const use: {
  <RIn, E, ROut>(self: Layer<RIn, E, ROut>): <RIn2, E2, ROut2>(
    that: Layer<RIn2, E2, ROut2>
  ) => Layer<RIn | Exclude<RIn2, ROut>, E | E2, ROut2>
  <RIn2, E2, ROut2, RIn, E, ROut>(that: Layer<RIn2, E2, ROut2>, self: Layer<RIn, E, ROut>): Layer<
    RIn | Exclude<RIn2, ROut>,
    E2 | E,
    ROut2
  >
}
```
