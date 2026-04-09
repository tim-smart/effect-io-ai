Package: `effect`<br />
Module: `Stream`<br />

## Stream.zipFlatten

Zips this stream with another point-wise and emits tuples of elements from
both streams, flattening the left tuple.

The new stream will end when one of the sides ends.

**Example**

```ts
import { Console, Effect, Stream } from "effect"

const program = Effect.gen(function*() {
  const stream1 = Stream.make(
    [1, "a"] as const,
    [2, "b"] as const,
    [3, "c"] as const
  )
  const stream2 = Stream.make("x", "y", "z")
  const result = yield* Stream.zipFlatten(stream1, stream2).pipe(Stream.runCollect)

  yield* Console.log(result)
})

Effect.runPromise(program)
// Output: [[1, "a", "x"], [2, "b", "y"], [3, "c", "z"]]
```

**Signature**

```ts
declare const zipFlatten: { <A2, E2, R2>(that: Stream<A2, E2, R2>): <A extends ReadonlyArray<any>, E, R>(self: Stream<A, E, R>) => Stream<[...A, A2], E2 | E, R2 | R>; <A extends ReadonlyArray<any>, E, R, A2, E2, R2>(self: Stream<A, E, R>, that: Stream<A2, E2, R2>): Stream<[...A, A2], E | E2, R | R2>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Stream.ts#L3642)

Since v2.0.0