Package: `effect`<br />
Module: `Stream`<br />

## Stream.runForEach

Runs the provided effectful callback for each element of the stream.

**Example**

```ts
import { Console, Effect, Stream } from "effect"

const stream = Stream.make(1, 2, 3)

const program = Effect.gen(function*() {
  yield* Stream.runForEach(stream, (n) => Console.log(`Processing: ${n}`))
})

Effect.runPromise(program)
// Processing: 1
// Processing: 2
// Processing: 3
```

**Signature**

```ts
declare const runForEach: { <A, X, E2, R2>(f: (a: A) => Effect.Effect<X, E2, R2>): <E, R>(self: Stream<A, E, R>) => Effect.Effect<void, E2 | E, R2 | R>; <A, E, R, X, E2, R2>(self: Stream<A, E, R>, f: (a: A) => Effect.Effect<X, E2, R2>): Effect.Effect<void, E | E2, R | R2>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Stream.ts#L9964)

Since v2.0.0