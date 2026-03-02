Package: `effect`<br />
Module: `Stream`<br />

## Stream.pipeThrough

Pipes the stream through `Sink.toChannel`, emitting only the sink leftovers.

If the sink completes mid-chunk, the remaining elements become the output stream.

**Example**

```ts
import { Console, Effect, Sink, Stream } from "effect"

const program = Effect.gen(function*() {
  const leftovers = yield* Stream.make(1, 2, 3, 4).pipe(
    Stream.pipeThrough(Sink.take(2)),
    Stream.runCollect
  )

  yield* Console.log(leftovers)
})

Effect.runPromise(program)
//=> [ 3, 4 ]
```

**Signature**

```ts
declare const pipeThrough: { <A2, A, L, E2, R2>(sink: Sink.Sink<A2, A, L, E2, R2>): <E, R>(self: Stream<A, E, R>) => Stream<L, E2 | E, R2 | R>; <A, E, R, A2, L, E2, R2>(self: Stream<A, E, R>, sink: Sink.Sink<A2, A, L, E2, R2>): Stream<L, E | E2, R | R2>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Stream.ts#L8309)

Since v2.0.0