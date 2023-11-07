# zipWithPar

Combines this layer the specified layer, producing a new layer that has the
inputs of both, and the outputs of both combined using the specified
function.

To import and use `zipWithPar` from the "Layer" module:

```ts
import * as Layer from 'effect/Layer'

// Can be accessed like this
Layer.zipWithPar
```

**Signature**

```ts
export declare const zipWithPar: {
  <R2, E2, B, A, C>(that: Layer<R2, E2, B>, f: (a: Context.Context<A>, b: Context.Context<B>) => Context.Context<C>): <
    R,
    E
  >(
    self: Layer<R, E, A>
  ) => Layer<R2 | R, E2 | E, C>
  <R, E, R2, E2, B, A, C>(
    self: Layer<R, E, A>,
    that: Layer<R2, E2, B>,
    f: (a: Context.Context<A>, b: Context.Context<B>) => Context.Context<C>
  ): Layer<R | R2, E | E2, C>
}
```
