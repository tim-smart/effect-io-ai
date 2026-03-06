Package: `effect`<br />
Module: `Stream`<br />

## Stream.interleave

Interleaves this stream with the specified stream by alternating pulls from
each stream; when one ends, the remaining values from the other stream are
emitted.

**Example**

```ts
import { Console, Effect, Stream } from "effect"

const stream = Stream.interleave(
  Stream.make(2, 3),
  Stream.make(5, 6, 7)
)

const program = Effect.gen(function*() {
  const collected = yield* Stream.runCollect(stream)
  yield* Console.log(collected)
})

Effect.runPromise(program)
// [2, 5, 3, 6, 7]
```

**Signature**

```ts
declare const interleave: { <A2, E2, R2>(that: Stream<A2, E2, R2>): <A, E, R>(self: Stream<A, E, R>) => Stream<A2 | A, E2 | E, R2 | R>; <A, E, R, A2, E2, R2>(self: Stream<A, E, R>, that: Stream<A2, E2, R2>): Stream<A | A2, E | E2, R | R2>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Stream.ts#L8743)

Since v2.0.0