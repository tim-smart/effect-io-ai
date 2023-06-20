# partitionEither

Split a stream by an effectful predicate. The faster stream may advance by
up to buffer elements further than the slower one.

To import and use `partitionEither` from the "Stream" module:

```ts
import * as Stream from '@effect/stream/Stream'

// Can be accessed like this
Stream.partitionEither
```

**Signature**

```ts
export declare const partitionEither: {
  <A, R2, E2, A2, A3>(predicate: (a: A) => Effect.Effect<R2, E2, Either.Either<A2, A3>>): <R, E>(
    self: Stream<R, E, A>
  ) => Effect.Effect<Scope.Scope | R2 | R, E2 | E, readonly [Stream<never, E2 | E, A2>, Stream<never, E2 | E, A3>]>
  <R, E, A, R2, E2, A2, A3>(
    self: Stream<R, E, A>,
    predicate: (a: A) => Effect.Effect<R2, E2, Either.Either<A2, A3>>
  ): Effect.Effect<Scope.Scope | R | R2, E | E2, readonly [Stream<never, E | E2, A2>, Stream<never, E | E2, A3>]>
}
```
