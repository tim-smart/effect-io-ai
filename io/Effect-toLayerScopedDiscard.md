# toLayerScopedDiscard

Constructs a layer from this effect.

To import and use `toLayerScopedDiscard` from the "Effect" module:

```ts
import * as Effect from '@effect/io/Effect'

// Can be accessed like this
Effect.toLayerScopedDiscard
```

**Signature**

```ts
export declare const toLayerScopedDiscard: <R, E, _>(
  effect: Effect<R, E, _>
) => Layer.Layer<Exclude<R, Scope.Scope>, E, never>
```
