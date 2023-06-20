# trackDefect

Returns an aspect that will update this metric with the defects of the
effects that it is applied to.

To import and use `trackDefect` from the "Metric" module:

```ts
import * as Metric from '@effect/io/Metric'

// Can be accessed like this
Metric.trackDefect
```

**Signature**

```ts
export declare const trackDefect: {
  <Type, Out>(metric: Metric<Type, unknown, Out>): <R, E, A>(self: Effect.Effect<R, E, A>) => Effect.Effect<R, E, A>
  <R, E, A, Type, Out>(self: Effect.Effect<R, E, A>, metric: Metric<Type, unknown, Out>): Effect.Effect<R, E, A>
}
```
