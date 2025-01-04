# scheduleForked

Runs an effect repeatedly on a new fiber according to a given schedule.

**Details**

This function starts the provided effect on a new fiber and runs it
repeatedly based on the specified schedule. The repetitions are managed by
the schedule's rules, which define the timing and number of iterations. The
fiber is attached to the current scope, meaning it is automatically managed
and cleaned up when the scope is closed.

The function returns a `RuntimeFiber` that allows you to monitor or interact
with the running fiber.

**When to Use**

This is particularly useful for concurrent execution of scheduled tasks or
when you want to continue processing without waiting for the repetitions to
complete.

To import and use `scheduleForked` from the "Effect" module:

```ts
import * as Effect from "effect/Effect"
// Can be accessed like this
Effect.scheduleForked
```

**Signature**

```ts
export declare const scheduleForked: {
  <Out, R2>(
    schedule: Schedule.Schedule<Out, unknown, R2>
  ): <A, E, R>(self: Effect<A, E, R>) => Effect<Fiber.RuntimeFiber<Out, E>, never, Scope.Scope | R2 | R>
  <A, E, R, Out, R2>(
    self: Effect<A, E, R>,
    schedule: Schedule.Schedule<Out, unknown, R2>
  ): Effect<Fiber.RuntimeFiber<Out, E>, never, Scope.Scope | R | R2>
}
```
