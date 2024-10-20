# mapAccum

Statefully maps over the elements of this stream to produce new elements.

To import and use `mapAccum` from the "Stream" module:

```ts
import * as Stream from "effect/Stream"
// Can be accessed like this
Stream.mapAccum
```

**Example**

```ts
import { Effect, Stream } from "effect"

const runningTotal = (stream: Stream.Stream<number>): Stream.Stream<number> =>
  stream.pipe(Stream.mapAccum(0, (s, a) => [s + a, s + a]))

// input:  0, 1, 2, 3, 4, 5, 6
// Effect.runPromise(Stream.runCollect(runningTotal(Stream.range(0, 6)))).then(
//   console.log
// )
// { _id: "Chunk", values: [ 0, 1, 3, 6, 10, 15, 21 ] }
```

**Signature**

```ts
export declare const mapAccum: {
  <S, A, A2>(s: S, f: (s: S, a: A) => readonly [S, A2]): <E, R>(self: Stream<A, E, R>) => Stream<A2, E, R>
  <A, E, R, S, A2>(self: Stream<A, E, R>, s: S, f: (s: S, a: A) => readonly [S, A2]): Stream<A2, E, R>
}
```
