# memoize

Returns a scoped effect that, if evaluated, will return the lazily computed
result of this layer.

To import and use `memoize` from the "Layer" module:

ts
import \* as Layer from "effect/Layer"
// Can be accessed like this
Layer.memoize
undefined

**Signature**

```ts
export declare const memoize: <RIn, E, ROut>(
  self: Layer<ROut, E, RIn>
) => Effect.Effect<Layer<ROut, E, RIn>, never, Scope.Scope>
```
