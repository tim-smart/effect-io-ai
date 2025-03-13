Package: `effect`<br />
Module: `Layer`<br />

## Layer.provideMerge

Feeds the output services of this layer into the input of the specified
layer, resulting in a new layer with the inputs of this layer, and the
outputs of both layers.

**Signature**

```ts
declare const provideMerge: { <RIn, E, ROut>(self: Layer<ROut, E, RIn>): <RIn2, E2, ROut2>(that: Layer<ROut2, E2, RIn2>) => Layer<ROut | ROut2, E | E2, RIn | Exclude<RIn2, ROut>>; <RIn2, E2, ROut2, RIn, E, ROut>(that: Layer<ROut2, E2, RIn2>, self: Layer<ROut, E, RIn>): Layer<ROut2 | ROut, E2 | E, RIn | Exclude<RIn2, ROut>>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Layer.ts#L863)

Since v2.0.0