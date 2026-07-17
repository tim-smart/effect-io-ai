Package: `effect`<br />
Module: `Stream`<br />

## Stream.pipeThroughChannelOrFail

Pipes values through the provided channel while preserving this stream's
failures alongside any channel failures.

**Details**

Upstream failures are not passed to the channel, so the resulting stream can
fail with either the original stream error or the channel error.

**Example** (Piping through a channel with failures)

```ts
import { Array, Channel, Effect, Stream } from "effect"

type NumberChunk = readonly [number, ...Array<number>]

const stringifyChunks = Channel.identity<NumberChunk, "StreamError", unknown>().pipe(
  Channel.map((chunk) => Array.map(chunk, String))
)

Effect.runPromise(Effect.gen(function*() {
  const result = yield* Stream.make(1, 2, 3).pipe(
    Stream.rechunk(2),
    Stream.pipeThroughChannelOrFail(stringifyChunks),
    Stream.runCollect
  )

  yield* Effect.sync(() => console.log(result))
}))
// [ "1", "2", "3" ]
```

**Signature**

```ts
declare const pipeThroughChannelOrFail: { <R2, E, E2, A, A2>(channel: Channel.Channel<Arr.NonEmptyReadonlyArray<A2>, E2, unknown, Arr.NonEmptyReadonlyArray<A>, E, unknown, R2>): <R>(self: Stream<A, E, R>) => Stream<A2, E | E2, R2 | R>; <R, R2, E, E2, A, A2>(self: Stream<A, E, R>, channel: Channel.Channel<Arr.NonEmptyReadonlyArray<A2>, E2, unknown, Arr.NonEmptyReadonlyArray<A>, E, unknown, R2>): Stream<A2, E | E2, R | R2>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Stream.ts#L9097)

Since v2.0.0