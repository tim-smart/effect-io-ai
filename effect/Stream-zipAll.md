# zipAll

Zips this stream with another point-wise, creating a new stream of pairs of
elements from both sides.

The defaults `defaultLeft` and `defaultRight` will be used if the streams
have different lengths and one of the streams has ended before the other.

To import and use `zipAll` from the "Stream" module:

```ts
import * as Stream from "effect/Stream"
// Can be accessed like this
Stream.zipAll
```

**Example**

```ts
import { Effect, Stream } from "effect"

const stream = Stream.zipAll(Stream.make(1, 2, 3, 4, 5, 6), {
  other: Stream.make("a", "b", "c"),
  defaultSelf: 0,
  defaultOther: "x"
})

// Effect.runPromise(Stream.runCollect(stream)).then(console.log)
// { _id: "Chunk", values: [ [ 1, "a" ], [ 2, "b" ], [ 3, "c" ], [ 4, "x" ], [ 5, "x" ], [ 6, "x" ] ] }
```

**Signature**

```ts
export declare const zipAll: {
  <A2, E2, R2, A>(options: {
    readonly other: Stream<A2, E2, R2>
    readonly defaultSelf: A
    readonly defaultOther: A2
  }): <E, R>(self: Stream<A, E, R>) => Stream<[A, A2], E2 | E, R2 | R>
  <A, E, R, A2, E2, R2>(
    self: Stream<A, E, R>,
    options: { readonly other: Stream<A2, E2, R2>; readonly defaultSelf: A; readonly defaultOther: A2 }
  ): Stream<[A, A2], E | E2, R | R2>
}
```
