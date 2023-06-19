# partitionEitherBuffer

Like `partitionEither`, but with a configurable `bufferSize` parameter.

Part of the `Stream` module, imported from `@effect/stream/Stream`.

**Signature**

```ts
export declare const partitionEitherBuffer: {
  <A, R2, E2, A2, A3>(predicate: (a: A) => Effect.Effect<R2, E2, Either.Either<A2, A3>>, bufferSize: number): <R, E>(
    self: Stream<R, E, A>
  ) => Effect.Effect<Scope.Scope | R2 | R, E2 | E, readonly [Stream<never, E2 | E, A2>, Stream<never, E2 | E, A3>]>
  <R, E, A, R2, E2, A2, A3>(
    self: Stream<R, E, A>,
    predicate: (a: A) => Effect.Effect<R2, E2, Either.Either<A2, A3>>,
    bufferSize: number
  ): Effect.Effect<Scope.Scope | R | R2, E | E2, readonly [Stream<never, E | E2, A2>, Stream<never, E | E2, A3>]>
}
```
