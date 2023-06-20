# trackAll

Returns an aspect that will update this metric with the specified constant
value every time the aspect is applied to an effect, regardless of whether
that effect fails or succeeds.

To import and use `trackAll` from the "Metric" module:

```ts
import * as Metric from '@effect/io/Metric'

// Can be accessed like this
Metric.trackAll
```

**Signature**

```ts
export declare const trackAll: {
  <In>(input: In): <Type, Out>(
    self: Metric<Type, In, Out>
  ) => <R, E, A>(effect: Effect.Effect<R, E, A>) => Effect.Effect<R, E, A>
  <Type, In, Out>(self: Metric<Type, In, Out>, input: In): <R, E, A>(
    effect: Effect.Effect<R, E, A>
  ) => Effect.Effect<R, E, A>
}
```
