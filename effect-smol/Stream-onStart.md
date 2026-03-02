Package: `effect`<br />
Module: `Stream`<br />

## Stream.onStart

Runs the provided effect before this stream starts.

**Example**

```ts
import { Console, Effect, Stream } from "effect"

const program = Effect.gen(function*() {
  const stream = Stream.fromArray([1, 2, 3]).pipe(
    Stream.onStart(Console.log("Stream started"))
  )

  const values = yield* Stream.runCollect(stream)
  yield* Console.log(values)
})

Effect.runPromise(program)
// Output:
// Stream started
// [1, 2, 3]
```

**Signature**

```ts
declare const onStart: { <X, EX, RX>(onStart: Effect.Effect<X, EX, RX>): <A, E, R>(self: Stream<A, E, R>) => Stream<A, E | EX, R | RX>; <A, E, R, X, EX, RX>(self: Stream<A, E, R>, onStart: Effect.Effect<X, EX, RX>): Stream<A, E | EX, R | RX>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Stream.ts#L9008)

Since v4.0.0