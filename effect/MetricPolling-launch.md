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
  <A2, R2>(
    schedule: Schedule.Schedule<A2, unknown, R2>
  ): <Type, In, R, E, Out>(
    self: MetricPolling<Type, In, R, E, Out>
  ) => Effect.Effect<Fiber.Fiber<A2, E>, never, Scope.Scope | R2 | R>
  <Type, In, R, E, Out, A2, R2>(
    self: MetricPolling<Type, In, R, E, Out>,
    schedule: Schedule.Schedule<A2, unknown, R2>
  ): Effect.Effect<Fiber.Fiber<A2, E>, never, Scope.Scope | R | R2>
}
```
