Package: `effect`<br />
Module: `Stream`<br />

## Stream.mergeEffect

Merges this stream with a background effect, keeping the stream's elements.

**When to use**

Use when an effect should run concurrently for the lifetime of a stream while
only the stream's elements remain in the output.

**Details**

The effect runs concurrently, fails the stream if it fails, and is interrupted
when the stream completes.

**Example** (Merging with a background effect)

```ts
import { Console, Effect, Stream } from "effect"

const program = Effect.gen(function*() {
  const values = yield* Stream.make(1, 2, 3).pipe(
    Stream.mergeEffect(Console.log("side task")),
    Stream.runCollect
  )

  yield* Console.log(values)
})

Effect.runPromise(program)
// Output: side task
// Output: [ 1, 2, 3 ]
```

**Signature**

```ts
declare const mergeEffect: { <A2, E2, R2>(effect: Effect.Effect<A2, E2, R2>): <A, E, R>(self: Stream<A, E, R>) => Stream<A, E2 | E, R2 | R>; <A, E, R, A2, E2, R2>(self: Stream<A, E, R>, effect: Effect.Effect<A2, E2, R2>): Stream<A, E | E2, R | R2>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Stream.ts#L3188)

Since v4.0.0