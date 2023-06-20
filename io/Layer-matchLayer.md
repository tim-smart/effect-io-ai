# matchLayer

Feeds the error or output services of this layer into the input of either
the specified `failure` or `success` layers, resulting in a new layer with
the inputs of this layer, and the error or outputs of the specified layer.

To import and use `matchLayer` from the "Layer" module:

```ts
import * as Layer from '@effect/io/Layer'

// Can be accessed like this
Layer.matchLayer
```

**Signature**

```ts
export declare const matchLayer: {
  <E, R2, E2, A2, A, R3, E3, A3>(
    onFailure: (error: E) => Layer<R2, E2, A2>,
    onSuccess: (context: Context.Context<A>) => Layer<R3, E3, A3>
  ): <R>(self: Layer<R, E, A>) => Layer<R2 | R3 | R, E2 | E3, A2 & A3>
  <R, E, A, R2, E2, A2, R3, E3, A3>(
    self: Layer<R, E, A>,
    onFailure: (error: E) => Layer<R2, E2, A2>,
    onSuccess: (context: Context.Context<A>) => Layer<R3, E3, A3>
  ): Layer<R | R2 | R3, E2 | E3, A2 & A3>
}
```
