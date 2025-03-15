Package: `effect`<br />
Module: `Stream`<br />

## Stream.fromAsyncIterable

Creates a stream from an `AsyncIterable`.

**Example**

```ts
import { Effect, Stream } from "effect"

const myAsyncIterable = async function*() {
  yield 1
  yield 2
}

const stream = Stream.fromAsyncIterable(
  myAsyncIterable(),
  (e) => new Error(String(e)) // Error Handling
)

Effect.runPromise(Stream.runCollect(stream)).then(console.log)
// { _id: 'Chunk', values: [ 1, 2 ] }
```

**Signature**

```ts
declare const fromAsyncIterable: <A, E>(iterable: AsyncIterable<A>, onError: (e: unknown) => E) => Stream<A, E>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Stream.ts#L1902)

Since v2.0.0