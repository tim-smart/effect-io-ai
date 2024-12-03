# interleaveWith

Combines this stream and the specified stream deterministically using the
stream of boolean values `pull` to control which stream to pull from next.
A value of `true` indicates to pull from this stream and a value of `false`
indicates to pull from the specified stream. Only consumes as many elements
as requested by the `pull` stream. If either this stream or the specified
stream are exhausted further requests for values from that stream will be
ignored.

To import and use `interleaveWith` from the "Stream" module:

```ts
import * as Stream from "effect/Stream"
// Can be accessed like this
Stream.interleaveWith
```

**Example**

```ts
import { Effect, Stream } from "effect"

const s1 = Stream.make(1, 3, 5, 7, 9)
const s2 = Stream.make(2, 4, 6, 8, 10)

const booleanStream = Stream.make(true, false, false).pipe(Stream.forever)

const stream = Stream.interleaveWith(s1, s2, booleanStream)

// Effect.runPromise(Stream.runCollect(stream)).then(console.log)
// {
//   _id: 'Chunk',
//   values: [
//     1, 2,  4, 3, 6,
//     8, 5, 10, 7, 9
//   ]
// }
```

**Signature**

```ts
export declare const interleaveWith: {
  <A2, E2, R2, E3, R3>(
    that: Stream<A2, E2, R2>,
    decider: Stream<boolean, E3, R3>
  ): <A, E, R>(self: Stream<A, E, R>) => Stream<A2 | A, E2 | E3 | E, R2 | R3 | R>
  <A, E, R, A2, E2, R2, E3, R3>(
    self: Stream<A, E, R>,
    that: Stream<A2, E2, R2>,
    decider: Stream<boolean, E3, R3>
  ): Stream<A | A2, E | E2 | E3, R | R2 | R3>
}
```
