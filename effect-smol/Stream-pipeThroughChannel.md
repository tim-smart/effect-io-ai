Package: `effect`<br />
Module: `Stream`<br />

## Stream.pipeThroughChannel

Pipes this stream through a channel that consumes and emits chunked elements.

The channel receives `NonEmptyReadonlyArray` chunks and can transform both the
output elements and error type.

**Example**

```ts
import { Array, Channel, Console, Effect, Stream } from "effect"

type NumberChunk = readonly [number, ...Array<number>]

const doubleChunks = Channel.identity<NumberChunk, never, unknown>().pipe(
  Channel.map((chunk) => Array.map(chunk, (n) => n * 2))
)

const program = Effect.gen(function*() {
  const result = yield* Stream.fromArray([1, 2, 3]).pipe(
    Stream.rechunk(2),
    Stream.pipeThroughChannel(doubleChunks),
    Stream.runCollect
  )
  yield* Console.log(result)
})

Effect.runPromise(program)
// => [2, 4, 6]
```

**Signature**

```ts
declare const pipeThroughChannel: { <R2, E, E2, A, A2>(channel: Channel.Channel<Arr.NonEmptyReadonlyArray<A2>, E2, unknown, Arr.NonEmptyReadonlyArray<A>, E, unknown, R2>): <R>(self: Stream<A, E, R>) => Stream<A2, E2, R2 | R>; <R, R2, E, E2, A, A2>(self: Stream<A, E, R>, channel: Channel.Channel<Arr.NonEmptyReadonlyArray<A2>, E2, unknown, Arr.NonEmptyReadonlyArray<A>, E, unknown, R2>): Stream<A2, E2, R | R2>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Stream.ts#L8316)

Since v2.0.0