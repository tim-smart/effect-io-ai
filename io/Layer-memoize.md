# memoize

Returns a scoped effect that, if evaluated, will return the lazily computed
result of this layer.

To import and use `memoize` from the "Layer" module:

```ts
import * as Layer from '@effect/io/Layer'

// Can be accessed like this
Layer.memoize
```

**Signature**

```ts
export declare const memoize: <RIn, E, ROut>(
  self: Layer<RIn, E, ROut>
) => Effect.Effect<Scope.Scope, never, Layer<RIn, E, ROut>>
```
