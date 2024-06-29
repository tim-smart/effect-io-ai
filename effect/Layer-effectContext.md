# effectContext

Constructs a layer from the specified effect, which must return one or more
services.

To import and use `effectContext` from the "Layer" module:

```ts
import * as Layer from "effect/Layer"
// Can be accessed like this
Layer.effectContext
```

**Signature**

```ts
export declare const effectContext: <A, E, R>(effect: Effect.Effect<Context.Context<A>, E, R>) => Layer<A, E, R>
```
