Package: `effect`<br />
Module: `Layer`<br />

## Layer.sync

Lazily constructs a layer from the specified value.

**Signature**

```ts
declare const sync: { <I, S>(tag: Context.Tag<I, S>): (evaluate: LazyArg<Types.NoInfer<S>>) => Layer<I>; <I, S>(tag: Context.Tag<I, S>, evaluate: LazyArg<Types.NoInfer<S>>): Layer<I>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Layer.ts#L728)

Since v2.0.0