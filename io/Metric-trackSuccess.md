# trackSuccess

Returns an aspect that will update this metric with the success value of
the effects that it is applied to.

To import and use `trackSuccess` from the "Metric" module:

```ts
import * as Metric from '@effect/io/Metric'

// Can be accessed like this
Metric.trackSuccess
```

**Signature**

```ts
export declare const trackSuccess: {
  <Type, In, Out>(metric: Metric<Type, In, Out>): <R, E, A extends In>(
    self: Effect.Effect<R, E, A>
  ) => Effect.Effect<R, E, A>
  <R, E, A extends In, Type, In, Out>(self: Effect.Effect<R, E, A>, metric: Metric<Type, In, Out>): Effect.Effect<
    R,
    E,
    A
  >
}
```
