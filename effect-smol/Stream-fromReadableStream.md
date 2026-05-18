Package: `effect`<br />
Module: `Stream`<br />

## Stream.fromReadableStream

Creates a stream from a lazily supplied Web `ReadableStream`.

The stream reads from a `ReadableStreamDefaultReader`, maps read failures
with `onError`, and closes the reader when the stream finalizes. By default
the reader is canceled; set `releaseLockOnEnd` to release the lock instead.

**Example** (Creating a stream from a ReadableStream)

```ts
import { Console, Data, Effect, Stream } from "effect"

class StreamError extends Data.TaggedError("StreamError")<{ readonly cause: unknown }> {}

const readableStream = new ReadableStream({
  start(controller) {
    controller.enqueue(1)
    controller.enqueue(2)
    controller.enqueue(3)
    controller.close()
  }
})

const program = Effect.gen(function*() {
  const stream = Stream.fromReadableStream({
    evaluate: () => readableStream,
    onError: (cause) => new StreamError({ cause })
  })
  const values = yield* Stream.runCollect(stream)
  yield* Console.log(values)
})

Effect.runPromise(program)
// Output: [ 1, 2, 3 ]
```

**Signature**

```ts
declare const fromReadableStream: <A, E>(options: { readonly evaluate: LazyArg<ReadableStream<A>>; readonly onError: (error: unknown) => E; readonly releaseLockOnEnd?: boolean | undefined; }) => Stream<A, E>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Stream.ts#L1438)

Since v2.0.0