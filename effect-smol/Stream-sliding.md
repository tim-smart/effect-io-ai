Package: `effect`<br />
Module: `Stream`<br />

## Stream.sliding

Emits a sliding window of `n` elements.

**Example**

```ts
import { Console, Effect, Stream, pipe } from "effect"

Effect.gen(function*() {
  const result = yield* pipe(
    Stream.make(1, 2, 3, 4, 5),
    Stream.sliding(2),
    Stream.runCollect
  )
  yield* Console.log(result)
})
// Output: [ [1, 2], [2, 3], [3, 4], [4, 5] ]
```

**Signature**

```ts
declare const sliding: { (chunkSize: number): <A, E, R>(self: Stream<A, E, R>) => Stream<Arr.NonEmptyReadonlyArray<A>, E, R>; <A, E, R>(self: Stream<A, E, R>, chunkSize: number): Stream<Arr.NonEmptyReadonlyArray<A>, E, R>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Stream.ts#L6512)

Since v2.0.0