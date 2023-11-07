# retryOrElse

Retries with the specified schedule, until it fails, and then both the
value produced by the schedule together with the last error are passed to
the recovery function.

To import and use `retryOrElse` from the "Effect" module:

```ts
import * as Effect from 'effect/Effect'

// Can be accessed like this
Effect.retryOrElse
```

**Signature**

```ts
export declare const retryOrElse: {
  <R1, E extends E3, A1, R2, E2, A2, E3>(
    policy: Schedule.Schedule<R1, E3, A1>,
    orElse: (e: E, out: A1) => Effect<R2, E2, A2>
  ): <R, A>(self: Effect<R, E, A>) => Effect<R1 | R2 | R, E | E2, A2 | A>
  <R, E extends E3, A, R1, A1, R2, E2, A2, E3>(
    self: Effect<R, E, A>,
    policy: Schedule.Schedule<R1, E3, A1>,
    orElse: (e: E, out: A1) => Effect<R2, E2, A2>
  ): Effect<R | R1 | R2, E | E2, A | A2>
}
```
