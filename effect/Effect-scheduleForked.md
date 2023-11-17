# scheduleForked

Runs this effect according to the specified schedule in a new fiber
attached to the current scope.

To import and use `scheduleForked` from the "Effect" module:

```ts
import * as Effect from "effect/Effect"
// Can be accessed like this
Effect.scheduleForked
```

**Signature**

```ts
export declare const scheduleForked: {
  <R2, Out>(
    schedule: Schedule.Schedule<R2, unknown, Out>
  ): <R, E, A>(self: Effect<R, E, A>) => Effect<Scope.Scope | R2 | R, never, Fiber.RuntimeFiber<E, Out>>
  <R, E, A, R2, Out>(
    self: Effect<R, E, A>,
    schedule: Schedule.Schedule<R2, unknown, Out>
  ): Effect<Scope.Scope | R | R2, never, Fiber.RuntimeFiber<E, Out>>
}
```
