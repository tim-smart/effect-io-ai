Package: `effect`<br />
Module: `Layer`<br />

## Layer.effect

Constructs a layer from the specified effect.

**Signature**

```ts
declare const effect: { <I, S>(tag: Context.Tag<I, S>): <E, R>(effect: Effect.Effect<Types.NoInfer<S>, E, R>) => Layer<I, E, R>; <I, S, E, R>(tag: Context.Tag<I, S>, effect: Effect.Effect<Types.NoInfer<S>, E, R>): Layer<I, E, R>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Layer.ts#L289)

Since v2.0.0