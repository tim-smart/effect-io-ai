# orElse

Executes this layer and returns its output, if it succeeds, but otherwise
executes the specified layer.

To import and use `orElse` from the "Layer" module:

```ts
import * as Layer from '@effect/io/Layer'

// Can be accessed like this
Layer.orElse
```

**Signature**

```ts
export declare const orElse: {
  <R2, E2, A2>(that: LazyArg<Layer<R2, E2, A2>>): <R, E, A>(self: Layer<R, E, A>) => Layer<R2 | R, E2 | E, A & A2>
  <R, E, A, R2, E2, A2>(self: Layer<R, E, A>, that: LazyArg<Layer<R2, E2, A2>>): Layer<R | R2, E | E2, A & A2>
}
```
