# effectContext

Constructs a layer from the specified effect, which must return one or more
services.

To import and use `effectContext` from the "Layer" module:

```ts
import * as Layer from '@effect/io/Layer'

// Can be accessed like this
Layer.effectContext
```

**Signature**

```ts
export declare const effectContext: <R, E, A>(effect: Effect.Effect<R, E, Context.Context<A>>) => Layer<R, E, A>
```
