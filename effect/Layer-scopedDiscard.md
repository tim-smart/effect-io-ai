Package: `effect`<br />
Module: `Layer`<br />

## Layer.scopedDiscard

Constructs a layer from the specified scoped effect.

**Signature**

```ts
declare const scopedDiscard: <X, E, R>(effect: Effect.Effect<X, E, R>) => Layer<never, E, Exclude<R, Scope.Scope>>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Layer.ts#L670)

Since v2.0.0