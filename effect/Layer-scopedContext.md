# scopedContext

Constructs a layer from the specified scoped effect, which must return one
or more services.

To import and use `scopedContext` from the "Layer" module:

```ts
import * as Layer from 'effect/Layer'

// Can be accessed like this
Layer.scopedContext
```

**Signature**

```ts
export declare const scopedContext: <R, E, A>(
  effect: Effect.Effect<R, E, Context.Context<A>>
) => Layer<Exclude<R, Scope.Scope>, E, A>
```
