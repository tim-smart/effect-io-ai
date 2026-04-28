Package: `effect`<br />
Module: `Stream`<br />

## Stream.toQueue

Converts a stream to a Queue for concurrent consumption.

**Example**

```ts
import { Effect, Queue, Stream } from "effect"

const program = Effect.gen(function* () {
  const queue = yield* Stream.toQueue(Stream.fromIterable([1, 2, 3]), { capacity: 8 })
  const chunk = yield* Queue.takeBetween(queue, 1, 3)
  return chunk
})
```

**Signature**

```ts
declare const toQueue: { (options: { readonly capacity: "unbounded"; } | { readonly capacity: number; readonly strategy?: "dropping" | "sliding" | "suspend" | undefined; }): <A, E, R>(self: Stream<A, E, R>) => Effect.Effect<Queue.Dequeue<A, E | Cause.Done>, never, R | Scope.Scope>; <A, E, R>(self: Stream<A, E, R>, options: { readonly capacity: "unbounded"; } | { readonly capacity: number; readonly strategy?: "dropping" | "sliding" | "suspend" | undefined; }): Effect.Effect<Queue.Dequeue<A, E | Cause.Done>, never, R | Scope.Scope>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Stream.ts#L10853)

Since v2.0.0