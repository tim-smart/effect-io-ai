# scopedDiscard

Constructs a layer from the specified scoped effect.

To import and use `scopedDiscard` from the "Layer" module:

```ts
import * as Layer from '@effect/io/Layer'

// Can be accessed like this
Layer.scopedDiscard
```

**Signature**

```ts
export declare const scopedDiscard: <R, E, T>(
  effect: Effect.Effect<R, E, T>
) => Layer<Exclude<R, Scope.Scope>, E, never>
```
