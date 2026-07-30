Package: `effect`<br />
Module: `Stream`<br />

## Stream.partitionEither

Splits a stream into two substreams based on an effectful condition.

**Details**

The `Stream.partitionEither` function is used to divide a stream into two
parts: one for elements that satisfy a condition producing `Either.left`
values, and another for those that produce `Either.right` values. This
function applies an effectful predicate to each element in the stream to
determine which substream it belongs to.

The faster stream may advance up to `bufferSize` elements ahead of the slower
one.

**Example** (Partitioning a Stream with an Effectful Predicate)

```ts
import { Effect, Either, Stream } from "effect"

const partition = Stream.range(1, 9).pipe(
  Stream.partitionEither(
    (n) => Effect.succeed(n % 2 === 0 ? Either.right(n) : Either.left(n)),
    { bufferSize: 5 }
  )
)

const program = Effect.scoped(
  Effect.gen(function*() {
    const [evens, odds] = yield* partition
    console.log(yield* Stream.runCollect(evens))
    console.log(yield* Stream.runCollect(odds))
  })
)

Effect.runPromise(program)
// { _id: 'Chunk', values: [ 1, 3, 5, 7, 9 ] }
// { _id: 'Chunk', values: [ 2, 4, 6, 8 ] }
```

**See**

- `partition` for partitioning a stream based on simple conditions.

**Signature**

```ts
declare const partitionEither: { <A, A3, A2, E2, R2>(predicate: (a: NoInfer<A>) => Effect.Effect<Either.Either<A3, A2>, E2, R2>, options?: { readonly bufferSize?: number | undefined; } | undefined): <E, R>(self: Stream<A, E, R>) => Effect.Effect<[left: Stream<A2, E2 | E, never>, right: Stream<A3, E2 | E, never>], E2 | E, Scope.Scope | R2 | R>; <A, E, R, A3, A2, E2, R2>(self: Stream<A, E, R>, predicate: (a: A) => Effect.Effect<Either.Either<A3, A2>, E2, R2>, options?: { readonly bufferSize?: number | undefined; } | undefined): Effect.Effect<[left: Stream<A2, E | E2, never>, right: Stream<A3, E | E2, never>], E | E2, Scope.Scope | R | R2>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Stream.ts#L3530)

Since v2.0.0