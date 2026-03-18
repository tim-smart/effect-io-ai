Package: `effect`<br />
Module: `Stream`<br />

## Stream.merge

Merges two streams, emitting elements from both as they arrive.

By default, the merged stream ends when both streams end. Use
`haltStrategy` to change the termination behavior.

**Example**

```ts
import { Console, Effect, Stream } from "effect"

const fast = Stream.make(1, 2, 3)
const slow = Stream.fromEffect(Effect.delay(Effect.succeed(4), "50 millis"))

const program = Effect.gen(function*() {
  const result = yield* Stream.runCollect(Stream.merge(fast, slow))
  yield* Console.log(result)
})

Effect.runPromise(program)
// Output: [ 1, 2, 3, 4 ]
```

**Signature**

```ts
declare const merge: { <A2, E2, R2>(that: Stream<A2, E2, R2>, options?: { readonly haltStrategy?: HaltStrategy | undefined; } | undefined): <A, E, R>(self: Stream<A, E, R>) => Stream<A | A2, E | E2, R | R2>; <A, E, R, A2, E2, R2>(self: Stream<A, E, R>, that: Stream<A2, E2, R2>, options?: { readonly haltStrategy?: HaltStrategy | undefined; } | undefined): Stream<A | A2, E | E2, R | R2>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Stream.ts#L2861)

Since v2.0.0