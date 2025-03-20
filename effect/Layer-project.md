Package: `effect`<br />
Module: `Layer`<br />

## Layer.project

Projects out part of one of the services output by this layer using the
specified function.

**Signature**

```ts
declare const project: { <I1, S1, I2, S2>(tagA: Context.Tag<I1, S1>, tagB: Context.Tag<I2, S2>, f: (a: Types.NoInfer<S1>) => Types.NoInfer<S2>): <RIn, E>(self: Layer<I1, E, RIn>) => Layer<I2, E, RIn>; <RIn, E, I1, S1, I2, S2>(self: Layer<I1, E, RIn>, tagA: Context.Tag<I1, S1>, tagB: Context.Tag<I2, S2>, f: (a: Types.NoInfer<S1>) => Types.NoInfer<S2>): Layer<I2, E, RIn>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Layer.ts#L569)

Since v2.0.0