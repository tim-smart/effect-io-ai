Package: `effect`<br />
Module: `Stream`<br />

## Stream.fromAsyncIterable

Creates a stream from an AsyncIterable.

**Example** (Creating a stream from an AsyncIterable)

```ts
import { Data, Effect, Stream } from "effect"

class StreamError extends Data.TaggedError("StreamError")<{ readonly cause: unknown }> {}

const iterable = (async function*() {
  yield 1
  yield 2
  yield 3
})()

Effect.runPromise(Effect.gen(function*() {
  const stream = Stream.fromAsyncIterable(iterable, (cause) => new StreamError({ cause }))
  const values = yield* Stream.runCollect(stream)
  yield* Effect.sync(() => console.log(values))
}))

// [ 1, 2, 3 ]
```

**Signature**

```ts
declare const fromAsyncIterable: <A, E>(iterable: AsyncIterable<A>, onError: (error: unknown) => E) => Stream<A, E>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Stream.ts#L1515)

Since v2.0.0