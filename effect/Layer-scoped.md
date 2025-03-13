Package: `effect`<br />
Module: `Layer`<br />

## Layer.scoped

Constructs a layer from the specified scoped effect.

**Signature**

```ts
declare const scoped: { <I, S>(tag: Context.Tag<I, S>): <E, R>(effect: Effect.Effect<Types.NoInfer<S>, E, R>) => Layer<I, E, Exclude<R, Scope.Scope>>; <I, S, E, R>(tag: Context.Tag<I, S>, effect: Effect.Effect<Types.NoInfer<S>, E, R>): Layer<I, E, Exclude<R, Scope.Scope>>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Layer.ts#L654)

Since v2.0.0