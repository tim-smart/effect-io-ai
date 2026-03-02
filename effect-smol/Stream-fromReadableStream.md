Package: `effect`<br />
Module: `Stream`<br />

## Stream.fromReadableStream

Creates a stream from a `ReadableStream`.

See https://developer.mozilla.org/en-US/docs/Web/API/ReadableStream.

**Example**

```ts
import { Console, Effect, Stream } from "effect"

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
    onError: (error) => new Error(String(error))
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

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Stream.ts#L1275)

Since v2.0.0