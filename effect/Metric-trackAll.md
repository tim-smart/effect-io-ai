# trackAll

Returns an aspect that will update this metric with the specified constant
value every time the aspect is applied to an effect, regardless of whether
that effect fails or succeeds.

To import and use `trackAll` from the "Metric" module:

```ts
import * as Metric from "effect/Metric"
// Can be accessed like this
Metric.trackAll
```

**Signature**

```ts
export declare const trackAll: {
  <In>(
    input: In
  ): <Type, Out>(self: Metric<Type, In, Out>) => <A, E, R>(effect: Effect.Effect<A, E, R>) => Effect.Effect<A, E, R>
  <Type, In, Out>(
    self: Metric<Type, In, Out>,
    input: In
  ): <A, E, R>(effect: Effect.Effect<A, E, R>) => Effect.Effect<A, E, R>
}
```
