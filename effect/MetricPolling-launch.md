# launch

Returns an effect that will launch the polling metric in a background
fiber, using the specified schedule.

To import and use `launch` from the "MetricPolling" module:

```ts
import * as MetricPolling from "effect/MetricPolling"
// Can be accessed like this
MetricPolling.launch
```

**Signature**

```ts
export declare const launch: {
  <R2, A2>(
    schedule: Schedule.Schedule<R2, unknown, A2>
  ): <Type, In, R, E, Out>(
    self: MetricPolling<Type, In, R, E, Out>
  ) => Effect.Effect<Scope.Scope | R2 | R, never, Fiber.Fiber<E, A2>>
  <Type, In, R, E, Out, R2, A2>(
    self: MetricPolling<Type, In, R, E, Out>,
    schedule: Schedule.Schedule<R2, unknown, A2>
  ): Effect.Effect<Scope.Scope | R | R2, never, Fiber.Fiber<E, A2>>
}
```
