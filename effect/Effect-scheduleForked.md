# scheduleForked

Runs this effect according to the specified schedule in a new fiber
attached to the current scope.

To import and use `scheduleForked` from the "Effect" module:

ts
import \* as Effect from "effect/Effect"
// Can be accessed like this
Effect.scheduleForked
undefined

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
