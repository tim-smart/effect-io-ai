# raceEither

Returns an effect that races this effect with the specified effect,
yielding the first result to succeed. If neither effect succeeds, then the
composed effect will fail with some error.

WARNING: The raced effect will safely interrupt the "loser", but will not
resume until the loser has been cleanly terminated.

To import and use `raceEither` from the "Effect" module:

```ts
import * as Effect from '@effect/io/Effect'

// Can be accessed like this
Effect.raceEither
```

**Signature**

```ts
export declare const raceEither: {
  <R2, E2, A2>(that: Effect<R2, E2, A2>): <R, E, A>(
    self: Effect<R, E, A>
  ) => Effect<R2 | R, E2 | E, Either.Either<A, A2>>
  <R, E, A, R2, E2, A2>(self: Effect<R, E, A>, that: Effect<R2, E2, A2>): Effect<R | R2, E | E2, Either.Either<A, A2>>
}
```