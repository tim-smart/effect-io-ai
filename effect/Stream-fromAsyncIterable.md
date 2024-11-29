# fromAsyncIterable

Creates a stream from an `AsyncIterable`.

To import and use `fromAsyncIterable` from the "Stream" module:

ts
import \* as Stream from "effect/Stream"
// Can be accessed like this
Stream.fromAsyncIterable
undefined

**Example**

```ts
import { Effect, Stream } from "effect"

const myAsyncIterable = async function* () {
  yield 1
  yield 2
}

const stream = Stream.fromAsyncIterable(
  myAsyncIterable(),
  (e) => new Error(String(e)) // Error Handling
)

// Effect.runPromise(Stream.runCollect(stream)).then(console.log)
// { _id: 'Chunk', values: [ 1, 2 ] }
```

**Signature**

```ts
export declare const fromAsyncIterable: <A, E>(iterable: AsyncIterable<A>, onError: (e: unknown) => E) => Stream<A, E>
```
