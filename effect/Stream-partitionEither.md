# partitionEither

Split a stream by an effectful predicate. The faster stream may advance by
up to buffer elements further than the slower one.

To import and use `partitionEither` from the "Stream" module:

```ts
import * as Stream from "effect/Stream"
// Can be accessed like this
Stream.partitionEither
```

**Example**

```ts
import { Effect, Either, Stream } from "effect"

const partition = Stream.range(1, 9).pipe(
  Stream.partitionEither((n) => Effect.succeed(n % 2 === 0 ? Either.left(n) : Either.right(n)), { bufferSize: 5 })
)

const program = Effect.scoped(
  Effect.gen(function* () {
    const [evens, odds] = yield* partition
    console.log(yield* Stream.runCollect(evens))
    console.log(yield* Stream.runCollect(odds))
  })
)

// Effect.runPromise(program)
// { _id: 'Chunk', values: [ 2, 4, 6, 8 ] }
// { _id: 'Chunk', values: [ 1, 3, 5, 7, 9 ] }
```

**Signature**

```ts
export declare const partitionEither: {
  <A, A3, A2, E2, R2>(
    predicate: (a: NoInfer<A>) => Effect.Effect<Either.Either<A3, A2>, E2, R2>,
    options?: { readonly bufferSize?: number | undefined } | undefined
  ): <E, R>(
    self: Stream<A, E, R>
  ) => Effect.Effect<[left: Stream<A2, E2 | E, never>, right: Stream<A3, E2 | E, never>], E2 | E, Scope.Scope | R2 | R>
  <A, E, R, A3, A2, E2, R2>(
    self: Stream<A, E, R>,
    predicate: (a: A) => Effect.Effect<Either.Either<A3, A2>, E2, R2>,
    options?: { readonly bufferSize?: number | undefined } | undefined
  ): Effect.Effect<[left: Stream<A2, E | E2, never>, right: Stream<A3, E | E2, never>], E | E2, Scope.Scope | R | R2>
}
```
