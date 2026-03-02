Package: `effect`<br />
Module: `Stream`<br />

## Stream.fromAsyncIterable

Creates a stream from an AsyncIterable.

**Example**

```ts
import { Console, Effect, Stream } from "effect"

const iterable = (async function*() {
  yield 1
  yield 2
  yield 3
})()

const program = Effect.gen(function*() {
  const stream = Stream.fromAsyncIterable(iterable, (error) => new Error(String(error)))
  const values = yield* Stream.runCollect(stream)
  yield* Console.log(values)
})

Effect.runPromise(program)
// Output: [ 1, 2, 3 ]
```

**Signature**

```ts
declare const fromAsyncIterable: <A, E>(iterable: AsyncIterable<A>, onError: (error: unknown) => E) => Stream<A, E>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Stream.ts#L1325)

Since v2.0.0