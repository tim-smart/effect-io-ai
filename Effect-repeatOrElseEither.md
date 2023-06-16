# repeatOrElseEither

Returns a new effect that repeats this effect according to the specified
schedule or until the first failure, at which point, the failure value and
schedule output are passed to the specified handler.

Scheduled recurrences are in addition to the first execution, so that
`pipe(effect, Effect.repeat(Schedule.once()))` yields an effect that executes
`effect`, and then if that succeeds, executes `effect` an additional time.

Part of the `Effect` module, imported from `@effect/io/Effect`.

### Signature

```typescript
export declare const repeatOrElseEither: {
  <R2, A extends A0, A0, B, E, R3, E2, C>(
    schedule: Schedule.Schedule<R2, A0, B>,
    orElse: (error: E, option: Option.Option<B>) => Effect<R3, E2, C>
  ): <R>(self: Effect<R, E, A>) => Effect<R2 | R3 | R, E2, Either.Either<C, B>>
  <R, E, A extends A0, A0, R2, B, R3, E2, C>(
    self: Effect<R, E, A>,
    schedule: Schedule.Schedule<R2, A0, B>,
    orElse: (error: E, option: Option.Option<B>) => Effect<R3, E2, C>
  ): Effect<R | R2 | R3, E2, Either.Either<C, B>>
}
```
