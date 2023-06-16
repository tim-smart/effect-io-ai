# repeat

Returns a new effect that repeats this effect according to the specified
schedule or until the first failure. Scheduled recurrences are in addition
to the first execution, so that `io.repeat(Schedule.once)` yields an effect
that executes `io`, and then if that succeeds, executes `io` an additional
time.

Part of the `Effect` module from the `@effect/io` package.

### Signature

```typescript
export declare const repeat: {
  <R1, A extends A0, A0, B>(schedule: Schedule.Schedule<R1, A, B>): <R, E>(
    self: Effect<R, E, A>
  ) => Effect<R1 | R, E, B>
  <R, E, A extends A0, A0, R1, B>(self: Effect<R, E, A>, schedule: Schedule.Schedule<R1, A0, B>): Effect<R | R1, E, B>
}
```
