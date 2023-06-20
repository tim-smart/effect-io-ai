# toLayerContext

Constructs a layer from this effect.

To import and use `toLayerContext` from the "Effect" module:

```ts
import * as Effect from '@effect/io/Effect'

// Can be accessed like this
Effect.toLayerContext
```

**Signature**

```ts
export declare const toLayerContext: <R, E, A>(effect: Effect<R, E, Context.Context<A>>) => Layer.Layer<R, E, A>
```
