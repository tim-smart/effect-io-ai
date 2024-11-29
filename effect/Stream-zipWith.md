# zipWith

Zips this stream with another point-wise and applies the function to the
paired elements.

The new stream will end when one of the sides ends.

To import and use `zipWith` from the "Stream" module:

ts
import \* as Stream from "effect/Stream"
// Can be accessed like this
Stream.zipWith
undefined

**Example**

```ts
import { Effect, Stream } from "effect"

// We create two streams and zip them with custom logic.
const stream = Stream.zipWith(Stream.make(1, 2, 3, 4, 5, 6), Stream.make("a", "b", "c"), (n, s) => [n - s.length, s])

// Effect.runPromise(Stream.runCollect(stream)).then(console.log)
// { _id: 'Chunk', values: [ [ 0, 'a' ], [ 1, 'b' ], [ 2, 'c' ] ] }
```

**Signature**

```ts
export declare const zipWith: {
  <AR, ER, RR, AL, A>(
    right: Stream<AR, ER, RR>,
    f: (left: AL, right: AR) => A
  ): <EL, RL>(left: Stream<AL, EL, RL>) => Stream<A, EL | ER, RL | RR>
  <AL, EL, RL, AR, ER, RR, A>(
    left: Stream<AL, EL, RL>,
    right: Stream<AR, ER, RR>,
    f: (left: AL, right: AR) => A
  ): Stream<A, EL | ER, RL | RR>
}
```
