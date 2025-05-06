Package: `effect`<br />
Module: `Layer`<br />

## Layer.discard

Replaces the layer's output with `never` and includes the layer only for its
side-effects.

**Signature**

```ts
declare const discard: <RIn, E, ROut>(self: Layer<ROut, E, RIn>) => Layer<never, E, RIn>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Layer.ts#L278)

Since v2.0.0