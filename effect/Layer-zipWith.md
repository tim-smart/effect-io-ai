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
    that: Layer<R2, E2, B>,
    f: (a: Context.Context<A>, b: Context.Context<B>) => Context.Context<C>
  ): <R, E>(self: Layer<R, E, A>) => Layer<R2 | R, E2 | E, C>
  <R, E, R2, E2, B, A, C>(
    self: Layer<R, E, A>,
    that: Layer<R2, E2, B>,
    f: (a: Context.Context<A>, b: Context.Context<B>) => Context.Context<C>
  ): Layer<R | R2, E | E2, C>
}
```
