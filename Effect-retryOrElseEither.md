# retryOrElseEither

Retries with the specified schedule, until it fails, and then both the
value produced by the schedule together with the last error are passed to
the recovery function.

Part of the `Effect` module from the `@effect/io` package. Also known as `Effect.retryOrElseEither`.

### Signature

```typescript
export declare const retryOrElseEither: {
  <R1, E extends E3, A1, R2, E2, A2, E3>(
    policy: Schedule.Schedule<R1, E3, A1>,
    orElse: (e: E, out: A1) => Effect<R2, E2, A2>
  ): <R, A>(self: Effect<R, E, A>) => Effect<R1 | R2 | R, E | E2, Either.Either<A2, A>>
  <R, A, E extends E3, R1, A1, R2, E2, A2, E3>(
    self: Effect<R, E, A>,
    policy: Schedule.Schedule<R1, E3, A1>,
    orElse: (e: E, out: A1) => Effect<R2, E2, A2>
  ): Effect<R | R1 | R2, E | E2, Either.Either<A2, A>>
}
```
