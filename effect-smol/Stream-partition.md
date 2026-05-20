Package: `effect`<br />
Module: `Stream`<br />

## Stream.partition

Splits a stream into scoped excluded and satisfying substreams using a
`Filter`.

**Details**

The returned streams are backed by queues in the current scope and should be
consumed while that scope remains open. The faster stream may advance up to
`bufferSize` elements ahead of the slower one.

**Example** (Partitioning a stream)

```ts
import { Console, Effect, Result, Stream } from "effect"

const program = Effect.gen(function*() {
  const [excluded, satisfying] = yield* Stream.partition(
    Stream.make(1, 2, 3, 4),
    (n) => n % 2 === 0 ? Result.succeed(n) : Result.fail(n)
  )
  const left = yield* Stream.runCollect(excluded)
  const right = yield* Stream.runCollect(satisfying)
  yield* Console.log(left)
  // Output: [ 1, 3 ]
  yield* Console.log(right)
  // Output: [ 2, 4 ]
})
```

**Signature**

```ts
declare const partition: { <A, Pass, Fail>(filter: Filter.Filter<NoInfer<A>, Pass, Fail>, options?: { readonly bufferSize?: number | undefined; }): <E, R>(self: Stream<A, E, R>) => Effect.Effect<[excluded: Stream<Fail, E>, satisfying: Stream<Pass, E>], never, R | Scope.Scope>; <A, E, R, Pass, Fail>(self: Stream<A, E, R>, filter: Filter.Filter<NoInfer<A>, Pass, Fail>, options?: { readonly bufferSize?: number | undefined; }): Effect.Effect<[excluded: Stream<Fail, E>, satisfying: Stream<Pass, E>], never, R | Scope.Scope>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Stream.ts#L4551)

Since v2.0.0