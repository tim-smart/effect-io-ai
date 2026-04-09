Package: `effect`<br />
Module: `Stream`<br />

## Stream.zip

Zips this stream with another point-wise and emits tuples of elements from
both streams. The new stream ends when either stream ends.

**Example**

```ts
import { Console, Effect, Stream } from "effect"

const stream1 = Stream.make(1, 2, 3)
const stream2 = Stream.make("a", "b", "c")

const zipped = Stream.zip(stream1, stream2)

const program = Effect.gen(function*() {
  const result = yield* Stream.runCollect(zipped)
  yield* Console.log(result)
})

Effect.runPromise(program)
// Output: [[1, "a"], [2, "b"], [3, "c"]]
```

**Signature**

```ts
declare const zip: { <A2, E2, R2>(that: Stream<A2, E2, R2>): <A, E, R>(self: Stream<A, E, R>) => Stream<[A, A2], E2 | E, R2 | R>; <A, E, R, A2, E2, R2>(self: Stream<A, E, R>, that: Stream<A2, E2, R2>): Stream<[A, A2], E | E2, R | R2>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Stream.ts#L3517)

Since v2.0.0