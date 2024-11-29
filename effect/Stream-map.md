# map

Transforms the elements of this stream using the supplied function.

To import and use `map` from the "Stream" module:

ts
import \* as Stream from "effect/Stream"
// Can be accessed like this
Stream.map
undefined

**Example**

```ts
import { Effect, Stream } from "effect"

const stream = Stream.make(1, 2, 3).pipe(Stream.map((n) => n + 1))

// Effect.runPromise(Stream.runCollect(stream)).then(console.log)
// { _id: 'Chunk', values: [ 2, 3, 4 ] }
```

**Signature**

```ts
export declare const map: {
  <A, B>(f: (a: A) => B): <E, R>(self: Stream<A, E, R>) => Stream<B, E, R>
  <A, E, R, B>(self: Stream<A, E, R>, f: (a: A) => B): Stream<B, E, R>
}
```
