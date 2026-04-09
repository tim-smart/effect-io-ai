Package: `effect`<br />
Module: `Stream`<br />

## Stream.accumulate

Accumulates elements into a growing array, emitting the cumulative array for each input chunk.

**Example**

```ts
import { Console, Effect, Stream } from "effect"

const program = Effect.gen(function*() {
  const accumulated = yield* Stream.runCollect(
    Stream.fromArray([1, 2, 3]).pipe(
      Stream.rechunk(1),
      Stream.accumulate
    )
  )
  yield* Console.log(accumulated)
})

Effect.runPromise(program)
//=> { _id: 'Chunk', values: [ [ 1 ], [ 1, 2 ], [ 1, 2, 3 ] ] }
```

**Signature**

```ts
declare const accumulate: <A, E, R>(self: Stream<A, E, R>) => Stream<Arr.NonEmptyArray<A>, E, R>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Stream.ts#L8543)

Since v2.0.0