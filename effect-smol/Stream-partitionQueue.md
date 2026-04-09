Package: `effect`<br />
Module: `Stream`<br />

## Stream.partitionQueue

Partitions a stream using a `Filter` and exposes passing and failing values as queues.

Each queue fails with the stream error or `Cause.Done` when the source ends.

**Example**

```ts
import { Console, Effect, Result, Stream } from "effect"

const program = Effect.gen(function*() {
  const [passes, fails] = yield* Stream.make(1, 2, 3, 4).pipe(
    Stream.partitionQueue((n) => n % 2 === 0 ? Result.succeed(n) : Result.fail(n))
  )

  const passValues = yield* Stream.fromQueue(passes).pipe(Stream.runCollect)
  const failValues = yield* Stream.fromQueue(fails).pipe(Stream.runCollect)

  yield* Console.log(passValues)
  // Output: [ 2, 4 ]
  yield* Console.log(failValues)
  // Output: [ 1, 3 ]
})

Effect.runPromise(Effect.scoped(program))
```

**Signature**

```ts
declare const partitionQueue: { <A, Pass, Fail>(filter: Filter.Filter<NoInfer<A>, Pass, Fail>, options?: { readonly capacity?: number | "unbounded" | undefined; }): <E, R>(self: Stream<A, E, R>) => Effect.Effect<[passes: Queue.Dequeue<Pass, E | Cause.Done>, fails: Queue.Dequeue<Fail, E | Cause.Done>], never, R | Scope.Scope>; <A, E, R, Pass, Fail>(self: Stream<A, E, R>, filter: Filter.Filter<NoInfer<A>, Pass, Fail>, options?: { readonly capacity?: number | "unbounded" | undefined; }): Effect.Effect<[passes: Queue.Dequeue<Pass, E | Cause.Done>, fails: Queue.Dequeue<Fail, E | Cause.Done>], never, R | Scope.Scope>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Stream.ts#L4213)

Since v4.0.0