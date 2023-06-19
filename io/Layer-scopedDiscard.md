# scopedDiscard

Constructs a layer from the specified scoped effect.

Part of the `Layer` module, imported from `@effect/io/Layer`.

**Signature**

```ts
export declare const scopedDiscard: <R, E, T>(
  effect: Effect.Effect<R, E, T>
) => Layer<Exclude<R, Scope.Scope>, E, never>
```
