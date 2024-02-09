# zipWith

Combines this layer with the specified layer concurrently, creating a new layer with merged input types and
combined output types using the provided function.

To import and use `zipWith` from the "Layer" module:

```ts
import * as Layer from "effect/Layer"
// Can be accessed like this
Layer.zipWith
```

**Signature**

```ts
export declare const zipWith: {
  <R2, E2, B, A, C>(
    that: Layer<B, E2, R2>,
    f: (a: Context.Context<A>, b: Context.Context<B>) => Context.Context<C>
  ): <R, E>(self: Layer<A, E, R>) => Layer<C, E2 | E, R2 | R>
  <R, E, R2, E2, B, A, C>(
    self: Layer<A, E, R>,
    that: Layer<B, E2, R2>,
    f: (a: Context.Context<A>, b: Context.Context<B>) => Context.Context<C>
  ): Layer<C, E | E2, R | R2>
}
```
