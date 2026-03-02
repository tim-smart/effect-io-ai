Package: `effect`<br />
Module: `Stream`<br />

## Stream.groupedWithin

Partitions the stream into arrays, emitting when the chunk size is reached
or the duration passes.

**Example**

```ts
import { Console, Effect, Stream } from "effect"

const program = Effect.gen(function*() {
  const values = yield* Stream.make(1, 2, 3).pipe(
    Stream.groupedWithin(2, "5 seconds"),
    Stream.runCollect
  )
  yield* Console.log(values)
})

Effect.runPromise(program)
// Output: [ [ 1, 2 ], [ 3 ] ]
```

**Signature**

```ts
declare const groupedWithin: { (chunkSize: number, duration: Duration.Input): <A, E, R>(self: Stream<A, E, R>) => Stream<Array<A>, E, R>; <A, E, R>(self: Stream<A, E, R>, chunkSize: number, duration: Duration.Input): Stream<Array<A>, E, R>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Stream.ts#L7558)

Since v2.0.0