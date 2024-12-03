# scopedContext

Constructs a layer from the specified scoped effect, which must return one
or more services.

To import and use `scopedContext` from the "Layer" module:

```ts
import * as Layer from "effect/Layer"
// Can be accessed like this
Layer.scopedContext
```

**Signature**

```ts
export declare const scopedContext: <A, E, R>(
  effect: Effect.Effect<Context.Context<A>, E, R>
) => Layer<A, E, Exclude<R, Scope.Scope>>
```
