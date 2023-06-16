# scheduleFrom

Runs this effect according to the specified schedule starting from the
specified input value.

Part of the `Effect` module from the `@effect/io` package.

### Signature

```typescript
export declare const scheduleFrom: {
  <R2, In, Out>(initial: In, schedule: Schedule.Schedule<R2, In, Out>): <R, E>(
    self: Effect<R, E, In>
  ) => Effect<R2 | R, E, Out>
  <R, E, In, R2, Out>(self: Effect<R, E, In>, initial: In, schedule: Schedule.Schedule<R2, In, Out>): Effect<
    R | R2,
    E,
    Out
  >
}
```
