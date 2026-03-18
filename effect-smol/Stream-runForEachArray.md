Package: `effect`<br />
Module: `Stream`<br />

## Stream.runForEachArray

Consumes the stream in chunks, passing each non-empty array to the callback.

**Example**

```ts
import { Console, Effect, Stream } from "effect"

const stream = Stream.make(1, 2, 3, 4, 5)
const program = Effect.gen(function*() {
  yield* Stream.runForEachArray(
    stream,
    (chunk) => Console.log(`Processing chunk: ${chunk.join(", ")}`)
  )
})

Effect.runPromise(program)
// Processing chunk: 1, 2, 3, 4, 5
```

**Signature**

```ts
declare const runForEachArray: { <A, X, E2, R2>(f: (a: Arr.NonEmptyReadonlyArray<A>) => Effect.Effect<X, E2, R2>): <E, R>(self: Stream<A, E, R>) => Effect.Effect<void, E2 | E, R2 | R>; <A, E, R, X, E2, R2>(self: Stream<A, E, R>, f: (a: Arr.NonEmptyReadonlyArray<A>) => Effect.Effect<X, E2, R2>): Effect.Effect<void, E | E2, R | R2>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Stream.ts#L10073)

Since v2.0.0