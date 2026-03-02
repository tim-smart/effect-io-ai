Package: `effect`<br />
Module: `Stream`<br />

## Stream.onEnd

Runs the provided effect when the stream ends successfully.

**Example**

```ts
import { Console, Effect, Stream } from "effect"

const program = Effect.gen(function*() {
  const values = yield* Stream.make(1, 2, 3).pipe(
    Stream.onEnd(Console.log("Stream ended")),
    Stream.runCollect
  )
  yield* Console.log(values)
})

Effect.runPromise(program)
// Stream ended
// [1, 2, 3]
```

**Signature**

```ts
declare const onEnd: { <X, EX, RX>(onEnd: Effect.Effect<X, EX, RX>): <A, E, R>(self: Stream<A, E, R>) => Stream<A, E | EX, R | RX>; <A, E, R, X, EX, RX>(self: Stream<A, E, R>, onEnd: Effect.Effect<X, EX, RX>): Stream<A, E | EX, R | RX>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Stream.ts#L9076)

Since v4.0.0