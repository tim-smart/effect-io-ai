# trackDefect

Returns an aspect that will update this metric with the defects of the
effects that it is applied to.

To import and use `trackDefect` from the "Metric" module:

```ts
import * as Metric from "effect/Metric"
// Can be accessed like this
Metric.trackDefect
```

**Signature**

```ts
export declare const trackDefect: {
  <Type, Out>(metric: Metric<Type, unknown, Out>): <A, E, R>(self: Effect.Effect<A, E, R>) => Effect.Effect<A, E, R>
  <A, E, R, Type, Out>(self: Effect.Effect<A, E, R>, metric: Metric<Type, unknown, Out>): Effect.Effect<A, E, R>
}
```
