## succeed

Constructs a layer from the specified value.

**Signature**

```ts
declare const succeed: { <I, S>(tag: Context.Tag<I, S>): (resource: Types.NoInfer<S>) => Layer<I>; <I, S>(tag: Context.Tag<I, S>, resource: Types.NoInfer<S>): Layer<I>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Layer.ts#L699)

Since v2.0.0