# match

Feeds the error or output services of this layer into the input of either
the specified `failure` or `success` layers, resulting in a new layer with
the inputs of this layer, and the error or outputs of the specified layer.

To import and use `match` from the "Layer" module:

```ts
import * as Layer from "effect/Layer"
// Can be accessed like this
Layer.match
```

**Signature**

```ts
export declare const match: {
  <E, R2, E2, A2, A, R3, E3, A3>(options: {
    readonly onFailure: (error: E) => Layer<A2, E2, R2>
    readonly onSuccess: (context: Context.Context<A>) => Layer<A3, E3, R3>
  }): <R>(self: Layer<A, E, R>) => Layer<A2 & A3, E2 | E3, R2 | R3 | R>
  <R, E, A, R2, E2, A2, R3, E3, A3>(
    self: Layer<A, E, R>,
    options: {
      readonly onFailure: (error: E) => Layer<A2, E2, R2>
      readonly onSuccess: (context: Context.Context<A>) => Layer<A3, E3, R3>
    }
  ): Layer<A2 & A3, E2 | E3, R | R2 | R3>
}
```
