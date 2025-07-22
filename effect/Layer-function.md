Package: `effect`<br />
Module: `Layer`<br />

## Layer.function

Constructs a layer from the context using the specified function.

**Signature**

```ts
declare const function: <I1, S1, I2, S2>(tagA: Context.Tag<I1, S1>, tagB: Context.Tag<I2, S2>, f: (a: Types.NoInfer<S1>) => Types.NoInfer<S2>) => Layer<I2, never, I1>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Layer.ts#L462)

Since v2.0.0