# toLayerDiscard

Constructs a layer from this effect.

To import and use `toLayerDiscard` from the "Effect" module:

```ts
import * as Effect from '@effect/io/Effect'

// Can be accessed like this
Effect.toLayerDiscard
```

**Signature**

```ts
export declare const toLayerDiscard: <R, E, _>(effect: Effect<R, E, _>) => Layer.Layer<R, E, never>
```
