# scopedDiscard

Constructs a layer from the specified scoped effect.

To import and use `scopedDiscard` from the "Layer" module:

ts
import \* as Layer from "effect/Layer"
// Can be accessed like this
Layer.scopedDiscard
undefined

**Signature**

```ts
export declare const scopedDiscard: <X, E, R>(
  effect: Effect.Effect<X, E, R>
) => Layer<never, E, Exclude<R, Scope.Scope>>
```
