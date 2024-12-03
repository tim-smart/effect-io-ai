# partition

Splits a stream into two substreams based on a predicate.

**Details**

The `Stream.partition` function splits a stream into two parts: one for
elements that satisfy the predicate (evaluated to `true`) and another for
those that do not (evaluated to `false`).

The faster stream may advance up to `bufferSize` elements ahead of the slower
one.

To import and use `partition` from the "Stream" module:

```ts
import * as Stream from "effect/Stream"
// Can be accessed like this
Stream.partition
```

**Example**

```ts
// Title: Partitioning a Stream into Even and Odd Numbers
import { Effect, Stream } from "effect"

const partition = Stream.range(1, 9).pipe(Stream.partition((n) => n % 2 === 0, { bufferSize: 5 }))

const program = Effect.scoped(
  Effect.gen(function* () {
    const [odds, evens] = yield* partition
    console.log(yield* Stream.runCollect(odds))
    console.log(yield* Stream.runCollect(evens))
  })
)

// Effect.runPromise(program)
// { _id: 'Chunk', values: [ 1, 3, 5, 7, 9 ] }
// { _id: 'Chunk', values: [ 2, 4, 6, 8 ] }
```

**Signature**

```ts
export declare const partition: {
  <C extends A, B extends A, A = C>(
    refinement: Refinement<NoInfer<A>, B>,
    options?: { bufferSize?: number | undefined } | undefined
  ): <E, R>(
    self: Stream<C, E, R>
  ) => Effect.Effect<[excluded: Stream<Exclude<C, B>, E, never>, satisfying: Stream<B, E, never>], E, R | Scope.Scope>
  <A>(
    predicate: Predicate<A>,
    options?: { bufferSize?: number | undefined } | undefined
  ): <E, R>(
    self: Stream<A, E, R>
  ) => Effect.Effect<[excluded: Stream<A, E, never>, satisfying: Stream<A, E, never>], E, Scope.Scope | R>
  <C extends A, E, R, B extends A, A = C>(
    self: Stream<C, E, R>,
    refinement: Refinement<A, B>,
    options?: { bufferSize?: number | undefined } | undefined
  ): Effect.Effect<[excluded: Stream<Exclude<C, B>, E, never>, satisfying: Stream<B, E, never>], E, R | Scope.Scope>
  <A, E, R>(
    self: Stream<A, E, R>,
    predicate: Predicate<A>,
    options?: { bufferSize?: number | undefined } | undefined
  ): Effect.Effect<[excluded: Stream<A, E, never>, satisfying: Stream<A, E, never>], E, R | Scope.Scope>
}
```
