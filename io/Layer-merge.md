# merge

Combines this layer with the specified layer, producing a new layer that
has the inputs and outputs of both.

Part of the `Layer` module, imported from `@effect/io/Layer`.

**Signature**

```ts
export declare const merge: {
  <RIn2, E2, ROut2>(that: Layer<RIn2, E2, ROut2>): <RIn, E, ROut>(
    self: Layer<RIn, E, ROut>
  ) => Layer<RIn2 | RIn, E2 | E, ROut2 | ROut>
  <RIn, E, ROut, RIn2, E2, ROut2>(self: Layer<RIn, E, ROut>, that: Layer<RIn2, E2, ROut2>): Layer<
    RIn | RIn2,
    E | E2,
    ROut | ROut2
  >
}
```
