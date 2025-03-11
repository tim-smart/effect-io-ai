## flatten

Flattens layers nested in the context of an effect.

**Signature**

```ts
declare const flatten: { <I, A, E2, R2>(tag: Context.Tag<I, Layer<A, E2, R2>>): <E, R>(self: Layer<I, E, R>) => Layer<A, E2 | E, R2 | R>; <I, E, R, A, E2, R2>(self: Layer<I, E, R>, tag: Context.Tag<I, Layer<A, E2, R2>>): Layer<A, E | E2, R | R2>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Layer.ts#L369)

Since v2.0.0