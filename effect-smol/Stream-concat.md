Package: `effect`<br />
Module: `Stream`<br />

## Stream.concat

Concatenates two streams, emitting all elements from the first stream
followed by all elements from the second stream.

**Example**

```ts
import { Console, Effect, Stream } from "effect"

const stream = Stream.concat(Stream.make(1, 2, 3), Stream.make(4, 5, 6))

Effect.gen(function*() {
  const values = yield* Stream.runCollect(stream)
  yield* Console.log(values)
})
// Output: [ 1, 2, 3, 4, 5, 6 ]
```

**Signature**

```ts
declare const concat: { <A2, E2, R2>(that: Stream<A2, E2, R2>): <A, E, R>(self: Stream<A, E, R>) => Stream<A | A2, E | E2, R | R2>; <A, E, R, A2, E2, R2>(self: Stream<A, E, R>, that: Stream<A2, E2, R2>): Stream<A | A2, E | E2, R | R2>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Stream.ts#L2868)

Since v2.0.0