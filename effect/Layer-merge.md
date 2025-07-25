Package: `effect`<br />
Module: `Layer`<br />

## Layer.merge

Merges this layer with the specified layer concurrently, producing a new layer with combined input and output types.

**Signature**

```ts
declare const merge: { <RIn2, E2, ROut2>(that: Layer<ROut2, E2, RIn2>): <RIn, E1, ROut>(self: Layer<ROut, E1, RIn>) => Layer<ROut2 | ROut, E2 | E1, RIn2 | RIn>; <RIn, E1, ROut, RIn2, E2, ROut2>(self: Layer<ROut, E1, RIn>, that: Layer<ROut2, E2, RIn2>): Layer<ROut | ROut2, E1 | E2, RIn | RIn2>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Layer.ts#L567)

Since v2.0.0