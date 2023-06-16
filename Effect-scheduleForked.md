# scheduleForked

Runs this effect according to the specified schedule in a new fiber
attached to the current scope.

Part of the `Effect` module from the `@effect/io` package. Also known as `Effect.scheduleForked`.

### Signature

```typescript
export declare const scheduleForked: {
  <R2, Out>(schedule: Schedule.Schedule<R2, unknown, Out>): <R, E, A>(
    self: Effect<R, E, A>
  ) => Effect<Scope.Scope | R2 | R, never, Fiber.RuntimeFiber<E, Out>>
  <R, E, A, R2, Out>(self: Effect<R, E, A>, schedule: Schedule.Schedule<R2, unknown, Out>): Effect<
    Scope.Scope | R | R2,
    never,
    Fiber.RuntimeFiber<E, Out>
  >
}
```
